import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/presentation/ng_nh_p_screen/ng_nh_p_screen.dart';
import 'package:hunh_minh_s_application3/presentation/splash_screen/splash_screen.dart';
import 'package:hunh_minh_s_application3/presentation/menu_trang_ch_container_screen/menu_trang_ch_container_screen.dart';
import 'package:hunh_minh_s_application3/presentation/menu_trang_h_th_ng_c_a_h_ng_t_c_t_c_tea_screen/menu_trang_h_th_ng_c_a_h_ng_t_c_t_c_tea_screen.dart';
import 'package:hunh_minh_s_application3/presentation/trang_u_i_screen/trang_u_i_screen.dart';
import 'package:hunh_minh_s_application3/presentation/trang_u_i_giao_h_ng_khi_b_m_ch_n_icon_u_i_g_c_tab_container_screen/trang_u_i_giao_h_ng_khi_b_m_ch_n_icon_u_i_g_c_tab_container_screen.dart';
import 'package:hunh_minh_s_application3/presentation/trang_t_h_ng_screen/trang_t_h_ng_screen.dart';
import 'package:hunh_minh_s_application3/presentation/ch_n_ph_ng_th_c_t_h_ng_screen/ch_n_ph_ng_th_c_t_h_ng_screen.dart';
import 'package:hunh_minh_s_application3/presentation/chi_ti_t_s_n_ph_m_screen/chi_ti_t_s_n_ph_m_screen.dart';
import 'package:hunh_minh_s_application3/presentation/nh_p_m_khuy_n_m_i_i_i_m_tab_container_screen/nh_p_m_khuy_n_m_i_i_i_m_tab_container_screen.dart';
import 'package:hunh_minh_s_application3/presentation/x_c_nh_n_otp_screen/x_c_nh_n_otp_screen.dart';
import 'package:hunh_minh_s_application3/presentation/ch_n_a_ch_giao_h_ng_screen/ch_n_a_ch_giao_h_ng_screen.dart';
import 'package:hunh_minh_s_application3/presentation/chi_ti_t_u_i_voucher_screen/chi_ti_t_u_i_voucher_screen.dart';
import 'package:hunh_minh_s_application3/presentation/trang_t_m_ki_m_tr_n_b_n_screen/trang_t_m_ki_m_tr_n_b_n_screen.dart';
import 'package:hunh_minh_s_application3/presentation/trang_chi_ti_t_u_i_voucher_screen/trang_chi_ti_t_u_i_voucher_screen.dart';
import 'package:hunh_minh_s_application3/presentation/gi_h_ng_screen/gi_h_ng_screen.dart';
import 'package:hunh_minh_s_application3/presentation/ch_n_s_n_ph_m_screen/ch_n_s_n_ph_m_screen.dart';
import 'package:hunh_minh_s_application3/presentation/t_m_h_th_ng_c_a_h_ng_t_c_t_c_tea_screen/t_m_h_th_ng_c_a_h_ng_t_c_t_c_tea_screen.dart';
import 'package:hunh_minh_s_application3/presentation/trang_chi_ti_t_u_i_i_i_m_screen/trang_chi_ti_t_u_i_i_i_m_screen.dart';
import 'package:hunh_minh_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String ngNhPScreen = '/ng_nh_p_screen';

  static const String splashScreen = '/splash_screen';

  static const String menuTrangChPage = '/menu_trang_ch_page';

  static const String menuTrangChContainerScreen =
      '/menu_trang_ch_container_screen';

  static const String menuTrangHThNgCAHNgTCTCTeaScreen =
      '/menu_trang_h_th_ng_c_a_h_ng_t_c_t_c_tea_screen';

  static const String trangUIScreen = '/trang_u_i_screen';

  static const String trangUIGiaoHNgKhiBMChNIconUIGCPage =
      '/trang_u_i_giao_h_ng_khi_b_m_ch_n_icon_u_i_g_c_page';

  static const String trangUIGiaoHNgKhiBMChNIconUIGCTabContainerScreen =
      '/trang_u_i_giao_h_ng_khi_b_m_ch_n_icon_u_i_g_c_tab_container_screen';

  static const String trangTHNgScreen = '/trang_t_h_ng_screen';

  static const String chNPhNgThCTHNgScreen = '/ch_n_ph_ng_th_c_t_h_ng_screen';

  static const String chiTiTSNPhMScreen = '/chi_ti_t_s_n_ph_m_screen';

  static const String nhPMKhuyNMIVoucherPage =
      '/nh_p_m_khuy_n_m_i_voucher_page';

  static const String nhPMKhuyNMIIIMPage = '/nh_p_m_khuy_n_m_i_i_i_m_page';

  static const String nhPMKhuyNMIIIMTabContainerScreen =
      '/nh_p_m_khuy_n_m_i_i_i_m_tab_container_screen';

  static const String xCNhNOtpScreen = '/x_c_nh_n_otp_screen';

  static const String chNAChGiaoHNgScreen = '/ch_n_a_ch_giao_h_ng_screen';

  static const String chiTiTUIVoucherScreen = '/chi_ti_t_u_i_voucher_screen';

  static const String trangUIMuaTICAHNgKhiBMChNIconUPage =
      '/trang_u_i_mua_t_i_c_a_h_ng_khi_b_m_ch_n_icon_u_page';

  static const String trangTMKiMTrNBNScreen = '/trang_t_m_ki_m_tr_n_b_n_screen';

  static const String trangChiTiTUIVoucherScreen =
      '/trang_chi_ti_t_u_i_voucher_screen';

  static const String giHNgScreen = '/gi_h_ng_screen';

  static const String chNSNPhMScreen = '/ch_n_s_n_ph_m_screen';

  static const String tMHThNgCAHNgTCTCTeaScreen =
      '/t_m_h_th_ng_c_a_h_ng_t_c_t_c_tea_screen';

  static const String trangChiTiTUIIIMScreen =
      '/trang_chi_ti_t_u_i_i_i_m_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    ngNhPScreen: (context) => NgNhPScreen(),
    splashScreen: (context) => SplashScreen(),
    menuTrangChContainerScreen: (context) => MenuTrangChContainerScreen(),
    menuTrangHThNgCAHNgTCTCTeaScreen: (context) =>
        MenuTrangHThNgCAHNgTCTCTeaScreen(),
    trangUIScreen: (context) => TrangUIScreen(),
    trangUIGiaoHNgKhiBMChNIconUIGCTabContainerScreen: (context) =>
        TrangUIGiaoHNgKhiBMChNIconUIGCTabContainerScreen(),
    trangTHNgScreen: (context) => TrangTHNgScreen(),
    chNPhNgThCTHNgScreen: (context) => ChNPhNgThCTHNgScreen(),
    chiTiTSNPhMScreen: (context) => ChiTiTSNPhMScreen(),
    nhPMKhuyNMIIIMTabContainerScreen: (context) =>
        NhPMKhuyNMIIIMTabContainerScreen(),
    xCNhNOtpScreen: (context) => XCNhNOtpScreen(),
    chNAChGiaoHNgScreen: (context) => ChNAChGiaoHNgScreen(),
    chiTiTUIVoucherScreen: (context) => ChiTiTUIVoucherScreen(),
    trangTMKiMTrNBNScreen: (context) => TrangTMKiMTrNBNScreen(),
    trangChiTiTUIVoucherScreen: (context) => TrangChiTiTUIVoucherScreen(),
    giHNgScreen: (context) => GiHNgScreen(),
    chNSNPhMScreen: (context) => ChNSNPhMScreen(),
    tMHThNgCAHNgTCTCTeaScreen: (context) => TMHThNgCAHNgTCTCTeaScreen(),
    trangChiTiTUIIIMScreen: (context) => TrangChiTiTUIIIMScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
