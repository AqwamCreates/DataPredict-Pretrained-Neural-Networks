local function buildModel()
	
	local ExperienceReplay = DataPredict.ExperienceReplays.UniformExperienceReplay.new(1, 10)
	
	local Model = DataPredict.Models.DoubleQLearningNeuralNetworkV2.new(nil, 0.01, nil, 1000, nil, 0.9999999)

	Model:addLayer(15, true, 'Mish')

	Model:addLayer(10, true, 'Mish')

	Model:addLayer(14, true, 'Mish')

	Model:addLayer(12, false, 'StableSoftmax')

	Model:setClassesList({'A','D','W','S','AW','DW','AS','DS','rotateLeft','rotateRight','jump','useWeapon'})

	Model:setPrintReinforcementOutput(false)
	
	Model:setExperienceReplay(ExperienceReplay)
	
	return Model
	
end
