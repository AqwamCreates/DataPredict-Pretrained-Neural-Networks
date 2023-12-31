local function buildModel()
	
	local ExperienceReplay = DataPredict.ExperienceReplays.UniformExperienceReplay.new(1, 10)
	
	local Model = DataPredict.Models.REINFORCENeuralNetwork.new(nil, 0.001, nil, 100, nil, 0.9999999)

	Model:addLayer(10, true, 'LeakyReLU')

	Model:addLayer(10, true, 'LeakyReLU')

	Model:addLayer(14, true, 'LeakyReLU')

	Model:addLayer(12, false, 'StableSoftmax')

	Model:setClassesList({'A','D','W','S','AW','DW','AS','DS','rotateLeft','rotateRight','jump','useWeapon'})

	Model:setPrintReinforcementOutput(false)
	
	Model:setExperienceReplay(ExperienceReplay)
	
	return Model
	
end
