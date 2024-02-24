import 'package:glass_down_v2/services/local_db_service.dart';
import 'package:glass_down_v2/ui/views/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:glass_down_v2/services/custom_themes_service.dart';
import 'package:glass_down_v2/services/settings_service.dart';
import 'package:glass_down_v2/ui/views/versions/versions_view.dart';
import 'package:glass_down_v2/ui/dialogs/add_app/add_app_dialog.dart';
import 'package:glass_down_v2/services/scraper_service.dart';
import 'package:glass_down_v2/services/paths_service.dart';
import 'package:glass_down_v2/services/apps_service.dart';
import 'package:glass_down_v2/services/logs_service.dart';
import 'package:glass_down_v2/ui/views/types/types_view.dart';
import 'package:glass_down_v2/ui/views/download_status/download_status_view.dart';
import 'package:glass_down_v2/ui/dialogs/about_app/about_app_dialog.dart';
import 'package:glass_down_v2/ui/dialogs/delete_old_apks/delete_old_apks_dialog.dart';
import 'package:glass_down_v2/services/deleter_service.dart';
import 'package:glass_down_v2/services/updater_service.dart';
import 'package:glass_down_v2/ui/views/permissions/permissions_view.dart';
import 'package:glass_down_v2/services/database_service.dart';
import 'package:glass_down_v2/services/font_importer_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: VersionsView),
    MaterialRoute(page: TypesView),
    MaterialRoute(page: DownloadStatusView),
    MaterialRoute(page: PermissionsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: CustomThemesService),
    InitializableSingleton(classType: LocalDbService),
    InitializableSingleton(classType: SettingsService),
    LazySingleton(classType: ScraperService),
    LazySingleton(classType: PathsService),
    LazySingleton(classType: AppsService),
    LazySingleton(classType: LogsService),
    LazySingleton(classType: DeleterService),
    LazySingleton(classType: UpdaterService),
    LazySingleton(classType: DatabaseService),
    LazySingleton(classType: FontImporterService),
// @stacked-service
  ],
  bottomsheets: [
// @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: AddAppDialog),
    StackedDialog(classType: AboutAppDialog),
    StackedDialog(classType: DeleteOldApksDialog),
// @stacked-dialog
  ],
)
class App {}
