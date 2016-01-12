package Bio::DB::HTS::Faidx;

use 5.014002;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Faidx ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(

) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(

);

our $VERSION = '1.04';

require XSLoader;
XSLoader::load('Bio::DB::HTS::Faidx', $VERSION);

# Preloaded methods go here.
1;
__END__


=head1 NAME

Faidx - Perl extension for accessing bgzip compressed and indexed FASTA using htslib

=head1 SYNOPSIS

use Bio::DB::HTS::Faidx;

my $fasta = "$Bin/data/Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.I.fa.gz" ;
my $location = "I:1-100" ;
my $seq_id = "I" ;
my $index = Bio::DB::HTS::Faidx->new($fasta);

my $seq = "" ;
my $length = 0 ;
($seq, $length) = $index->get_sequence($location);

$seq = $index->get_sequence_no_length($location);
$length = $index->length($seq_id);

my @seq_ids = $index->get_all_sequence_ids();



=head1 AUTHOR

Rishi Nag

=head1 COPYRIGHT AND LICENSE

# Copyright [1999-2016] Wellcome Trust Sanger Institute and the EMBL-European Bioinformatics Institute
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


=cut
