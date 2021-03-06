" Vim syntax file
" Language: P4
" Maintainer: Antonin Bas, Barefoot Networks Inc
" Latest Revision: 5 August 2014

if v:version < 600
  syntax clear
elseif exists('b:current_syntax')
  finish
endif

" Use case sensitive matching of keywords
syntax case match

syntax keyword p4ObjectKeyword action calculated_field control counter
syntax keyword p4ObjectKeyword field_list field_list_calculation header
syntax keyword p4ObjectKeyword header_type metadata meter parser
syntax keyword p4ObjectKeyword parser_value_set table

" Tables
syntax keyword p4ObjectAttributeKeyword actions min_size max_size reads size
" Header types
syntax keyword p4ObjectAttributeKeyword fields length max_length
" Field list calculation
syntax keyword p4ObjectAttributeKeyword algorithm input output_width
" Calculated fields
syntax keyword p4ObjectAttributeKeyword update verify
" Counters and meters
syntax keyword p4ObjectAttributeKeyword direct static type
syntax keyword p4ObjectAttributeKeyword instance_count min_width saturating

syntax keyword p4MatchTypeKeyword exact lpm range ternary valid

syntax keyword p4CounterTypeKeyword bytes packets

syntax keyword p4Todo contained FIXME TODO
syntax region p4Comment start="//" end="$" contains=p4Todo,@Spell
syntax region p4BlockComment start="/\*" end="\*/" contains=p4Todo,@Spell

syntax match p4Preprocessor   "#.*"

" Number
syntax match p4DecimalInt "\<\d\+\([Ee]\d\+\)\?\>"
syntax match p4HexadecimalInt "\<0x\x\+\>"

syntax keyword p4Builtin apply hit miss
syntax keyword p4Builtin extract set_metadata

syntax keyword p4Primitives add_header copy_header remove_header
syntax keyword p4Primitives modify_field add_to_field
syntax keyword p4Primitives set_field_to_hash_index
" legacy, to remove later
syntax keyword p4Primitives modify_field_with_hash_based_offset
syntax keyword p4Primitives truncate drop
syntax keyword p4Primitives count meter
syntax keyword p4Primitives generate_digest
syntax keyword p4Primitives resubmit recirculate
syntax keyword p4Primitives clone_ingress_pkt_to_ingress
syntax keyword p4Primitives clone_egress_pkt_to_ingress
syntax keyword p4Primitives clone_ingress_pkt_to_egress
syntax keyword p4Primitives clone_egress_pkt_to_egress

syntax keyword p4Conditional if else select
syntax keyword p4Statement return

syntax keyword p4Constants P4_PARSING_DONE


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Apply highlight groups to syntax groups defined above

highlight def link p4ObjectKeyword Type
highlight def link p4Comment Comment
highlight def link p4BlockComment Comment
highlight def link p4Preprocessor Macro
highlight def link p4ObjectAttributeKeyword Keyword
highlight def link p4MatchTypeKeyword Keyword
highlight def link p4CounterTypeKeyword Keyword
highlight def link p4DecimalInt Number
highlight def link p4HexadecimalInt Number
highlight def link p4Builtin Function
highlight def link p4Conditional Conditional
highlight def link p4Statement Statement
highlight def link p4Constants Constant
highlight def link p4Primitives Function
highlight def link p4Todo Todo

let b:current_syntax = 'p4'
