#!/bin/bash

output_file="schema.prisma"

base_file="base.prisma"

cp "prisma/$base_file" "prisma/$output_file"

find "prisma/subschemas/" -type f -name "*.prisma" -exec cat {} + -exec echo >> "prisma/$output_file" \;

echo "$output_file file successfully built"
