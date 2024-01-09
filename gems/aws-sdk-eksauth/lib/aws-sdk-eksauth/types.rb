# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EKSAuth
  module Types

    # You don't have permissions to perform the requested operation. The
    # IAM principal making the request must have at least one IAM
    # permissions policy attached that grants the required permissions. For
    # more information, see [Access management][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster for the request.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   The token of the Kubernetes service account for the pod.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/AssumeRoleForPodIdentityRequest AWS API Documentation
    #
    class AssumeRoleForPodIdentityRequest < Struct.new(
      :cluster_name,
      :token)
      SENSITIVE = [:token]
      include Aws::Structure
    end

    # @!attribute [rw] subject
    #   The name of the Kubernetes service account inside the cluster to
    #   associate the IAM credentials with.
    #   @return [Types::Subject]
    #
    # @!attribute [rw] audience
    #   The identity that is allowed to use the credentials. This value is
    #   always `pods.eks.amazonaws.com`.
    #   @return [String]
    #
    # @!attribute [rw] pod_identity_association
    #   The Amazon Resource Name (ARN) and ID of the EKS Pod Identity
    #   association.
    #   @return [Types::PodIdentityAssociation]
    #
    # @!attribute [rw] assumed_role_user
    #   An object with the permanent IAM role identity and the temporary
    #   session name.
    #
    #   The ARN of the IAM role that the temporary credentials authenticate
    #   to.
    #
    #   The session name of the temporary session requested to STS. The
    #   value is a unique identifier that contains the role ID, a colon
    #   (`:`), and the role session name of the role that is being assumed.
    #   The role ID is generated by IAM when the role is created. The role
    #   session name part of the value follows this format:
    #   `eks-clustername-podname-random UUID `
    #   @return [Types::AssumedRoleUser]
    #
    # @!attribute [rw] credentials
    #   The *Amazon Web Services Signature Version 4* type of temporary
    #   credentials.
    #   @return [Types::Credentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/AssumeRoleForPodIdentityResponse AWS API Documentation
    #
    class AssumeRoleForPodIdentityResponse < Struct.new(
      :subject,
      :audience,
      :pod_identity_association,
      :assumed_role_user,
      :credentials)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # An object with the permanent IAM role identity and the temporary
    # session name.
    #
    # @!attribute [rw] arn
    #   The ARN of the IAM role that the temporary credentials authenticate
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] assume_role_id
    #   The session name of the temporary session requested to STS. The
    #   value is a unique identifier that contains the role ID, a colon
    #   (`:`), and the role session name of the role that is being assumed.
    #   The role ID is generated by IAM when the role is created. The role
    #   session name part of the value follows this format:
    #   `eks-clustername-podname-random UUID `
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/AssumedRoleUser AWS API Documentation
    #
    class AssumedRoleUser < Struct.new(
      :arn,
      :assume_role_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The *Amazon Web Services Signature Version 4* type of temporary
    # credentials.
    #
    # @!attribute [rw] session_token
    #   The token that applications inside the pods must pass to any service
    #   API to use the temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The secret access key that applications inside the pods use to sign
    #   requests.
    #   @return [String]
    #
    # @!attribute [rw] access_key_id
    #   The access key ID that identifies the temporary security
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   The Unix epoch timestamp in seconds when the current credentials
    #   expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/Credentials AWS API Documentation
    #
    class Credentials < Struct.new(
      :session_token,
      :secret_access_key,
      :access_key_id,
      :expiration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified Kubernetes service account token is expired.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/ExpiredTokenException AWS API Documentation
    #
    class ExpiredTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # These errors are usually caused by a server-side issue.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified parameter is invalid. Review the available parameters
    # for the API request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown if the request contains a semantic error. The
    # precise meaning will depend on the API, and will be documented in the
    # error message.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified Kubernetes service account token is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/InvalidTokenException AWS API Documentation
    #
    class InvalidTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon EKS Pod Identity associations provide the ability to manage
    # credentials for your applications, similar to the way that Amazon EC2
    # instance profiles provide credentials to Amazon EC2 instances.
    #
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) of the EKS Pod Identity association.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID of the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/PodIdentityAssociation AWS API Documentation
    #
    class PodIdentityAssociation < Struct.new(
      :association_arn,
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is unavailable. Back off and retry the operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing the name of the Kubernetes service account inside
    # the cluster to associate the IAM credentials with.
    #
    # @!attribute [rw] namespace
    #   The name of the Kubernetes namespace inside the cluster to create
    #   the association in. The service account and the pods that use the
    #   service account must be in this namespace.
    #   @return [String]
    #
    # @!attribute [rw] service_account
    #   The name of the Kubernetes service account inside the cluster to
    #   associate the IAM credentials with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/Subject AWS API Documentation
    #
    class Subject < Struct.new(
      :namespace,
      :service_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because your request rate is too high. Reduce
    # the frequency of requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/eks-auth-2023-11-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end