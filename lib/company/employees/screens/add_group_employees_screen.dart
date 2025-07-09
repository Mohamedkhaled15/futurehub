import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_dashed_border.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/company/employees/cubit/employees_cubit.dart';
import 'package:future_hub/company/employees/cubit/employees_state.dart';
import 'package:future_hub/company/employees/services/employees_service.dart';
import 'package:open_file/open_file.dart';

class AddGroupEmployees extends StatefulWidget {
  const AddGroupEmployees({super.key});

  @override
  State<AddGroupEmployees> createState() => _AddGroupEmployeesState();
}

class _AddGroupEmployeesState extends State<AddGroupEmployees> {
  File? _employeesFile;
  var _uploading = false;
  // final _uploadService = UploadService();
  final _employeesService = EmployeesService();
  String text = '';
  String fileUrl = '';

  Future<void> _pickEmployeesFile() async {
    try {
      final pickedFile = await FilePicker.platform.pickFiles();
      if (pickedFile == null || pickedFile.files.single.path == null) {
        showToast(text: "No file selected", state: ToastStates.error);
        return;
      }
      _employeesFile = File(pickedFile.files.single.path!);

      setState(() {
        text = pickedFile.files.single.name; // Display file name
      });
    } catch (e) {
      debugPrint("File pick error: $e");
      showToast(
          text: "Failed to pick a file. Try again.", state: ToastStates.error);
    }
  }

  Future<void> _uploadEmployeesFile() async {
    if (_employeesFile == null) {
      showToast(
          text: "Please select a file to upload.", state: ToastStates.error);
      return;
    }
    setState(() {
      _uploading = true;
    });
    try {
      await _employeesService.addEmployeeFile(file: _employeesFile!);
    } catch (e) {
      debugPrint("File upload failed: $e");
    } finally {
      setState(() {
        _uploading = false;
      });
    }
  }

  Future<void> _downloadDataFilingFile() async {
    final t = AppLocalizations.of(context)!;
    try {
      // Call downloadFile method to get the URL of the file
      final fileUrl = await _employeesService.downloadFile();
      // Use launchUrl to open the file URL
      await OpenFile.open(fileUrl);
    } catch (e) {
      debugPrint("Error downloading or opening file: $e");
      if (e is! PlatformException) {
        showToast(
          text: t.couldnt_find_the_data_filling_file_try_again_later,
          state: ToastStates.error,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return BlocConsumer<EmployeesCubit, EmployeesState>(
      listener: (context, state) {},
      builder: (context, state) => Scaffold(
        appBar: FutureHubAppBar(
          title: Text(t.add_a_group),
          context: context,
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                t.data_filling_file,
                style: theme.textTheme.labelLarge,
              ),
              const SizedBox(height: 16.0),
              ChevronDashedBorder(
                child: ChevronButton(
                  onPressed: _downloadDataFilingFile,
                  style: ChevronButtonStyle.dashed(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/download.svg'),
                      const SizedBox(width: 12.0),
                      Text(t.download_file),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              Text(
                t.upload_data_filling_file,
                style: theme.textTheme.labelLarge,
              ),
              const SizedBox(height: 16.0),
              ChevronDashedBorder(
                color: Palette.successColor,
                child: ChevronButton(
                  onPressed: _pickEmployeesFile,
                  style: ChevronButtonStyle.dashed(color: Palette.successColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/excel.svg'),
                      const SizedBox(width: 12.0),
                      Text(text.isEmpty ? t.add_file : text),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const Spacer(),
              ChevronButton(
                loading: _uploading,
                onPressed: _uploadEmployeesFile,
                child: Text(t.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
