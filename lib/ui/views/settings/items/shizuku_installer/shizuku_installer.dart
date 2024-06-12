import 'package:flutter/material.dart';
import 'package:glass_down_v2/ui/widgets/settings/common/item_wrapper.dart';
import 'package:stacked/stacked.dart';

import 'shizuku_installer_model.dart';

class ShizukuInstaller extends StackedView<ShizukuInstallerModel> {
  const ShizukuInstaller({super.key});

  @override
  Widget builder(
    BuildContext context,
    ShizukuInstallerModel viewModel,
    Widget? child,
  ) {
    return InkWell(
      onTap: () => viewModel.updateValue(!viewModel.shizukuEnabled),
      child: ItemWrapper(
        mainText: 'Shizuku installer',
        secondaryText: viewModel.getStatus(),
        threeLined: true,
        enabled: false,
        trailingWidget: Switch(
          // onChanged: (value) => viewModel.updateValue(value),
          onChanged: null,
          value: viewModel.shizukuEnabled,
        ),
      ),
    );
  }

  @override
  ShizukuInstallerModel viewModelBuilder(
    BuildContext context,
  ) =>
      ShizukuInstallerModel();

  @override
  void onViewModelReady(ShizukuInstallerModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel.checkShizukuStatus();
  }
}
