cmake_minimum_required(VERSION 3.10)

project(phpix_controller C)

add_compile_options(-Wall -Wextra -pedantic -g)

add_executable(phpix_controller phpix.c data.c)
