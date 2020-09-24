#!/usr/bin/bash

reverse()
{
rev $1 | tac > $2
}
