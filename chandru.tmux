#!/usr/bin/env bash
current_kube_context=$(kubectl config current-context)
current_status_right=$(tmux show-option -gqv status-right)
tmux set-option -gq status-right "${current_status_right}#[gg=colour007,fg=colour009]${current_kube_context}"
