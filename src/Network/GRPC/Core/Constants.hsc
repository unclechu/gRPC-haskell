{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Network.GRPC.Core.Constants where

#include "grpc/grpc.h"
#include "grpc/impl/codegen/propagation_bits.h"

argEnableCensus :: Int
argEnableCensus = #const GRPC_ARG_ENABLE_CENSUS

argMaxConcurrentStreams :: Int
argMaxConcurrentStreams = #const GRPC_ARG_MAX_CONCURRENT_STREAMS

argMaxMessageLength :: Int
argMaxMessageLength = #const GRPC_ARG_MAX_MESSAGE_LENGTH

writeBufferHint :: Int
writeBufferHint = #const GRPC_WRITE_BUFFER_HINT

writeNoCompress :: Int
writeNoCompress = #const GRPC_WRITE_NO_COMPRESS

newtype PropagationMask = PropagationMask {unPropagationMask :: Int}
  deriving (Show, Eq, Ord, Integral, Enum, Real, Num)

propagateDeadline :: PropagationMask
propagateDeadline = PropagationMask $ #const GRPC_PROPAGATE_DEADLINE

propagateCensusStatsContext :: PropagationMask
propagateCensusStatsContext =
  PropagationMask $ #const GRPC_PROPAGATE_CENSUS_STATS_CONTEXT

propagateCensusTracingContext :: PropagationMask
propagateCensusTracingContext =
  PropagationMask $ #const GRPC_PROPAGATE_CENSUS_TRACING_CONTEXT

propagateCancellation :: PropagationMask
propagateCancellation =
  PropagationMask $ #const GRPC_PROPAGATE_CANCELLATION
