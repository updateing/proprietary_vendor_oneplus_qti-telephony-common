.class public final enum Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;
.super Ljava/lang/Enum;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApCmd2ModemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_DISABLE_TUNER_ACL:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_ENTER_WLAN_TEST_MODE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_GET_AUTO_SELECT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_GET_COMMON_GPIO:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_GET_DPDT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_GET_TUER_STAT_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_NV_BACKUP:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_NV_CHECK:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_NV_MISC_INFO:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_NV_RESTORE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_GET_QAT3350_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_GET_QAT3514_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_GET_QM13119_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_GET_SIM_MEID:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_REMOTEFS_SYNC:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_SET_QAT3350_C1_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_SET_QAT3514_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_OEM_SET_QM13119_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_SAR_SENSOR_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_SET_ANT_NS_MODE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_SET_AUTO_SELECT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_SET_COMMON_GPIO:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_SET_DPDT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_SET_TUER_STAT_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_UPDATE_EFS_SYNC_FLAG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum TMO_AUDIO_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum TMO_CAPABILITY_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum TMO_LOG_PACKAGE_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1921
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_NV_BACKUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_BACKUP:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1922
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_NV_RESTORE"

    invoke-direct {v0, v1, v4, v5}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_RESTORE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1923
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_NV_CHECK"

    invoke-direct {v0, v1, v5, v6}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_CHECK:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1924
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_SET_ANTENNA"

    invoke-direct {v0, v1, v6, v7}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1925
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_GET_ANTENNA_POS"

    invoke-direct {v0, v1, v7, v8}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1926
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_SET_AUTO_SELECT_CONFIG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_AUTO_SELECT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1927
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_GET_AUTO_SELECT_CONFIG"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_AUTO_SELECT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1928
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_REMOTEFS_SYNC"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_REMOTEFS_SYNC:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1929
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_GET_SIM_MEID"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_SIM_MEID:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1930
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_GET_QAT3350_CONFIG"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_QAT3350_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1931
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_GET_QAT3514_CONFIG"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_QAT3514_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1932
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_GET_QM13119_CONFIG"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_QM13119_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1933
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_SET_QAT3350_C1_SW"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_QAT3350_C1_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1934
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_SET_QAT3514_SW"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_QAT3514_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1935
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_OEM_SET_QM13119_SW"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_QM13119_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1936
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_GET_DPDT_CONFIG"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_DPDT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1937
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_SET_DPDT_CONFIG"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_DPDT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1938
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_NV_MISC_INFO"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_MISC_INFO:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1939
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_GET_COMMON_GPIO"

    const/16 v2, 0x12

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_COMMON_GPIO:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1940
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_SET_COMMON_GPIO"

    const/16 v2, 0x13

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_COMMON_GPIO:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1941
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_DISABLE_TUNER_ACL"

    const/16 v2, 0x14

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_DISABLE_TUNER_ACL:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1942
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_SET_ANT_NS_MODE"

    const/16 v2, 0x15

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANT_NS_MODE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1943
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_SET_TUER_STAT_REQ"

    const/16 v2, 0x16

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_TUER_STAT_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1944
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_GET_TUER_STAT_REQ"

    const/16 v2, 0x17

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_TUER_STAT_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1945
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_ENTER_WLAN_TEST_MODE"

    const/16 v2, 0x18

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_ENTER_WLAN_TEST_MODE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1946
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_UPDATE_EFS_SYNC_FLAG"

    const/16 v2, 0x19

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_UPDATE_EFS_SYNC_FLAG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1947
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_SAR_SENSOR_OPERATE"

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SAR_SENSOR_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1948
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "TMO_AUDIO_OPERATE"

    const/16 v2, 0x1b

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->TMO_AUDIO_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1949
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "TMO_CAPABILITY_OPERATE"

    const/16 v2, 0x1c

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->TMO_CAPABILITY_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1950
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "TMO_LOG_PACKAGE_OPERATE"

    const/16 v2, 0x1d

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->TMO_LOG_PACKAGE_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1951
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string/jumbo v1, "AP_2_MODEM_MAX_CMD"

    const/16 v2, 0x1e

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1920
    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_BACKUP:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_RESTORE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_CHECK:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_AUTO_SELECT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_AUTO_SELECT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_REMOTEFS_SYNC:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_SIM_MEID:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_QAT3350_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_QAT3514_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_QM13119_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_QAT3350_C1_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_QAT3514_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_QM13119_SW:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_DPDT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_DPDT_CONFIG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_MISC_INFO:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_COMMON_GPIO:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_COMMON_GPIO:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_DISABLE_TUNER_ACL:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANT_NS_MODE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_TUER_STAT_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_TUER_STAT_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_ENTER_WLAN_TEST_MODE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_UPDATE_EFS_SYNC_FLAG:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SAR_SENSOR_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->TMO_AUDIO_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->TMO_CAPABILITY_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->TMO_LOG_PACKAGE_OPERATE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->$VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p3, "value"    # I

    .prologue
    .line 1955
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1953
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->value:I

    .line 1957
    iput p3, p0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->value:I

    .line 1958
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1920
    const-class v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;
    .registers 1

    .prologue
    .line 1920
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->$VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 2

    .prologue
    .line 1962
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->value:I

    return v0
.end method
