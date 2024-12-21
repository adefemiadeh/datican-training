#!/bin/bash
sensors|grep "Core 0"|awk '{print $3}'
