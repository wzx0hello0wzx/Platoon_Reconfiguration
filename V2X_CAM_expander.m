function [u] = V2X_CAM_expander(y, z)
%#eml
  u = z;
  u = FILTER_PRESCAN_V2X_FIXED_CAM_MESSAGE(u, y);
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_MESSAGE(u, y)
  u.HEADER = FILTER_PRESCAN_HEADER(u.HEADER, y.HEADER);
  u.DATA = FILTER_PRESCAN_V2X_FIXED_CAM_DATA(u.DATA, y.DATA);
end

function [u] = FILTER_PRESCAN_HEADER(u, y)
  u.valid = y.valid;
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_DATA(u, y)
  u.header = FILTER_PRESCAN_V2X_FIXED_CAM_header(u.header, y.header);
  u.cam = FILTER_PRESCAN_V2X_FIXED_CAM_cam(u.cam, y.cam);
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_header(u, y)
  u.protocolVersion = y.protocolVersion;
  u.messageID = y.messageID;
  u.stationID = y.stationID;
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_cam(u, y)
  u.generationDeltaTime = y.generationDeltaTime;
  u.camParameters = FILTER_PRESCAN_V2X_FIXED_CAM_camParameters(u.camParameters, y.camParameters);
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_camParameters(u, y)
  u.basicContainer = FILTER_PRESCAN_V2X_FIXED_CAM_basicContainer(u.basicContainer, y.basicContainer);
  u.highFrequencyContainer = FILTER_PRESCAN_V2X_FIXED_CAM_highFrequencyContainer(u.highFrequencyContainer, y.highFrequencyContainer);
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_basicContainer(u, y)
  u.stationType = y.stationType;
  u.referencePosition = FILTER_PRESCAN_V2X_FIXED_CAM_referencePosition(u.referencePosition, y.referencePosition);
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_referencePosition(u, y)
  u.latitude = y.latitude;
  u.longitude = y.longitude;
  u.positionConfidenceEllipse = FILTER_PRESCAN_V2X_FIXED_CAM_positionConfidenceEllipse(u.positionConfidenceEllipse, y.positionConfidenceEllipse);
  u.altitude = FILTER_PRESCAN_V2X_FIXED_CAM_altitude(u.altitude, y.altitude);
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_positionConfidenceEllipse(u, y)
  u.semiMajorConfidence = y.semiMajorConfidence;
  u.semiMinorConfidence = y.semiMinorConfidence;
  u.semiMajorOrientation = y.semiMajorOrientation;
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_altitude(u, y)
  u.altitudeValue = y.altitudeValue;
  u.altitudeConfidence = y.altitudeConfidence;
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_highFrequencyContainer(u, y)
  u.basicVehicleContainerHighFrequency = FILTER_PRESCAN_V2X_FIXED_CAM_basicVehicleContainerHighFrequency(u.basicVehicleContainerHighFrequency, y.basicVehicleContainerHighFrequency);
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_basicVehicleContainerHighFrequency(u, y)
  u.heading = FILTER_PRESCAN_V2X_FIXED_CAM_heading(u.heading, y.heading);
  u.speed = FILTER_PRESCAN_V2X_FIXED_CAM_speed(u.speed, y.speed);
  u.driveDirection = y.driveDirection;
  u.vehicleLength = FILTER_PRESCAN_V2X_FIXED_CAM_vehicleLength(u.vehicleLength, y.vehicleLength);
  u.vehicleWidth = y.vehicleWidth;
  u.longitudinalAcceleration = FILTER_PRESCAN_V2X_FIXED_CAM_longitudinalAcceleration(u.longitudinalAcceleration, y.longitudinalAcceleration);
  u.curvature = FILTER_PRESCAN_V2X_FIXED_CAM_curvature(u.curvature, y.curvature);
  u.curvatureCalculationMode = y.curvatureCalculationMode;
  u.yawRate = FILTER_PRESCAN_V2X_FIXED_CAM_yawRate(u.yawRate, y.yawRate);
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_heading(u, y)
  u.headingValue = y.headingValue;
  u.headingConfidence = y.headingConfidence;
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_speed(u, y)
  u.speedValue = y.speedValue;
  u.speedConfidence = y.speedConfidence;
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_vehicleLength(u, y)
  u.vehicleLengthValue = y.vehicleLengthValue;
  u.vehicleLengthConfidenceIndication = y.vehicleLengthConfidenceIndication;
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_longitudinalAcceleration(u, y)
  u.longitudinalAccelerationValue = y.longitudinalAccelerationValue;
  u.longitudinalAccelerationConfidence = y.longitudinalAccelerationConfidence;
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_curvature(u, y)
  u.curvatureValue = y.curvatureValue;
  u.curvatureConfidence = y.curvatureConfidence;
end

function [u] = FILTER_PRESCAN_V2X_FIXED_CAM_yawRate(u, y)
  u.yawRateValue = y.yawRateValue;
  u.yawRateConfidence = y.yawRateConfidence;
end

