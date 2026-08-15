/*
 * Copyright 2026 D'Arcy Smith.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <p101_error/error.h>
#include <stdbool.h>
#include <stdlib.h>

enum
{
    EXAMPLE_ERROR_CODE = 7
};

int main(void)
{
    struct p101_error *error;
    bool               expected_error;
    bool               reset_succeeded;
    int                status;

    error  = NULL;
    status = EXIT_FAILURE;

    error = p101_error_create(false);
    if(error == NULL)
    {
        goto done;
    }

    P101_ERROR_RAISE_USER(error, "example failure", EXAMPLE_ERROR_CODE);
    expected_error = p101_error_is_error(error, P101_ERROR_USER, EXAMPLE_ERROR_CODE);

    p101_error_reset(error);
    reset_succeeded = p101_error_has_no_error(error);
    if(expected_error && reset_succeeded)
    {
        status = EXIT_SUCCESS;
    }

done:
    if(error != NULL)
    {
        p101_error_destroy(error);
    }
    return status;
}
