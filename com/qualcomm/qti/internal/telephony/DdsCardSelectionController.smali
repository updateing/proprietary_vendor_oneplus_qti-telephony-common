.class public Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
.super Ljava/lang/Object;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$1;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$2;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$6;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;
    }
.end annotation


# static fields
.field private static final ACTION_MCFG_MBN_ACTIVATED_DONE:Ljava/lang/String; = "qualcomm.intent.action.ACTION_MCFG_MBN_DONE"

.field private static final BACKUP_DDS_ICCID:Ljava/lang/String; = "persist.radio.bksim.iccid"

.field private static final CONFIG_CURRENT_PRIMARY_SUB:Ljava/lang/String; = "config_current_primary_sub"

.field private static final DDS_ICCID:Ljava/lang/String; = "persist.radio.ddssim.iccid"

.field private static final DDS_NETWORK_TYPE:Ljava/lang/String; = "persist.radio.ddssim.rat"

.field private static final DEBUG:Z = true

.field private static final EVENT_ADD_SUBINFO_RECORD_FOR_MULTIMODE:I = 0xa

.field private static final EVENT_ANTENNA_SWITCH_RETRY:I = 0x14

.field private static final EVENT_CARD_ABSENT_FOR_MULTIMODE:I = 0xb

.field private static final EVENT_GET_ANTENNA_POS:I = 0x15

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0xe

.field private static final EVENT_GET_RADIO_CAPABILITY:I = 0x11

.field private static final EVENT_MBN_ACTIVATED_DONE:I = 0x17

.field private static final EVENT_PHONE_OBJECT_SWITCH:I = 0x1a

.field private static final EVENT_PRI_PERF_DONE:I = 0x12

.field private static final EVENT_PSENSOR_CHANGE:I = 0x1f

.field private static final EVENT_RADIO_AVAILABLE:I = 0xc

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0xd

.field private static final EVENT_RESET_DDS:I = 0x1c

.field private static final EVENT_SCREEN_CHANGE:I = 0x1d

.field private static final EVENT_SET_GW_PERF_DONE:I = 0x10

.field private static final EVENT_SET_RAT_EX:I = 0x1e

.field private static final EVENT_SIM_LOADED_DONE:I = 0x18

.field private static final EVENT_SIM_STATUS_CHANGE:I = 0x16

.field private static final EVENT_SOFTSIM_SETTING_CHANGE:I = 0x1b

.field private static final EVENT_TEST_CARD_DETECT:I = 0x13

.field private static final EVENT_WAITING_TIME_OUT:I = 0xf

.field private static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x20

.field private static final FIRST_BOOT:Ljava/lang/String; = "persist.radio.firstboot"

.field private static final FORBID_INDEX:I = 0x4

.field private static final ICCID_INDEX:I = 0x1

.field private static final IMSI_INDEX:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "DdsCardSelectionController"

.field private static final NOT_PROVISIONED:I = 0x0

.field private static final OEM_CMD_RF_SAR_STATUS_CLOSE:I = 0x3

.field private static final OEM_CMD_RF_SAR_STATUS_OPEN:I = 0x2

.field private static final OEM_EVENT_TETHER_STATE_CHANGE:I = 0x19

.field private static final OEM_RF_SAR_2G_WIFIHOT:I = 0x1

.field private static final OEM_RF_SAR_2G_WIFIHOT_CALL:I = 0x4

.field private static final OEM_RF_SAR_5G_WIFIHOT:I = 0x2

.field private static final OEM_RF_SAR_5G_WIFIHOT_CALL:I = 0x5

.field private static final OEM_RF_SAR_CALLING_ONLY:I = 0x3

.field private static final OEM_SAR_DEFAULT:I = 0x6

.field private static final OEM_SAR_FRANCE:I = 0x7

.field private static final PERMIT_INDEX:I = 0x3

.field private static final PILOT_INDEX:I = 0x5

.field private static final PROVISIONED:I = 0x1

.field private static final SLOT_INDEX:I = 0x0

.field private static final SOFTSIM_DISABLE_EVENT_DELAY:I = 0xfa0

.field private static final SOFTSIM_URL:Landroid/net/Uri;

.field private static final SOFT_SIM:Landroid/net/Uri;

.field private static final VDBG:Z = false

.field private static final WAITING_OTHER_CARD_INSERT_DELAY:I = 0x1770

.field private static final WAITING_OTHER_CARD_READY_DELAY:I = 0xbb8

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1770

.field private static isCMCCVersion:Z

.field private static isCardPlugIn2Out:Z

.field private static isEfsSyncFlageEnable:Z

.field private static isFranceSAROpen:Z

.field private static isSAREanble:Z

.field private static isSetedANTconfig:Z

.field private static isTestMode:Z

.field private static mIccidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mNumPhones:I

.field private static mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

.field private static mTMOIccidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static retry_times:I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;


# instance fields
.field action:I

.field private isCtaSwitchNotOn:Z

.field private isPtcrb:Z

.field isWifiHotOpen:Z

.field isWifiHotOpenOld:Z

.field mAudioManager:Landroid/media/AudioManager;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

.field private mHandler:Landroid/os/Handler;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mObserverPsensor:Landroid/database/ContentObserver;

.field mPSensorNegative:Z

.field private mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private mQcRilHookReady:Z

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

.field private final mSARActionTable:[[I

.field private mSoftsimPhoneId:I

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field oldAction:I

.field private softSimEnable:Z


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEfsSyncFlageEnable:Z

    return v0
.end method

.method static synthetic -get1()Z
    .registers 1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSetedANTconfig:Z

    return v0
.end method

.method static synthetic -get10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/RadioCapability;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    return-object v0
.end method

.method static synthetic -get11(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)I
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mSoftsimPhoneId:I

    return v0
.end method

.method static synthetic -get12()I
    .registers 1

    sget v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    return v0
.end method

.method static synthetic -get13(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->softSimEnable:Z

    return v0
.end method

.method static synthetic -get2()Z
    .registers 1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isTestMode:Z

    return v0
.end method

.method static synthetic -get3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic -get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/content/Context;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    return-object v0
.end method

.method static synthetic -get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    return-object v0
.end method

.method static synthetic -get8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    return v0
.end method

.method static synthetic -get9()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .registers 1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .registers 1
    .param p0, "-value"    # Z

    .prologue
    sput-boolean p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    return p0
.end method

.method static synthetic -set1(Z)Z
    .registers 1
    .param p0, "-value"    # Z

    .prologue
    sput-boolean p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSetedANTconfig:Z

    return p0
.end method

.method static synthetic -set2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    return p1
.end method

.method static synthetic -set3(I)I
    .registers 1
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isOnlyOneCardInsert()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .registers 1
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemSendSubscriptionSettings()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;I)V
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemSetDefaultDataSubId(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .registers 3
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .registers 1
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processMbnActivatedDone()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;I)V
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processSimStatusChange(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .registers 1
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processSoftSimIccidChange()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;IILjava/lang/String;)V
    .registers 4
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "slotId"    # I
    .param p2, "status"    # I
    .param p3, "iccid"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->updateCurrentCardStatus(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/util/ArrayList;)Z
    .registers 3
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "active"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;J)V
    .registers 4
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "delayMillis"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->acquireWakeLockWithTimeOut(J)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .registers 1
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->clearWakeLock()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .registers 1
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPhoneMatchImei()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;ILjava/lang/String;)V
    .registers 3
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .registers 1
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleSarEvet()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .registers 1
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleTimeOut()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 162
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    .line 173
    sput v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    .line 177
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    .line 179
    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isTestMode:Z

    .line 180
    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSAREanble:Z

    .line 181
    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isFranceSAROpen:Z

    .line 182
    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSetedANTconfig:Z

    .line 183
    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEfsSyncFlageEnable:Z

    .line 185
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$1;

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$1;-><init>(I)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccidList:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$2;

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$2;-><init>(I)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTMOIccidList:Ljava/util/ArrayList;

    .line 234
    const-string/jumbo v0, "content://com.redteamobile.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->SOFTSIM_URL:Landroid/net/Uri;

    .line 235
    const-string/jumbo v0, "content://com.redteamobile.provider/softsim/iccid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->SOFT_SIM:Landroid/net/Uri;

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qRCC"    # Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    sget v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    new-array v5, v5, [Lcom/android/internal/telephony/RadioCapability;

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    .line 164
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 165
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 167
    sget v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    new-array v5, v5, [Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    .line 170
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCtaSwitchNotOn:Z

    .line 171
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    .line 174
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 243
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->softSimEnable:Z

    .line 244
    const/4 v5, 0x0

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mSoftsimPhoneId:I

    .line 246
    const/4 v5, 0x6

    new-array v5, v5, [[I

    .line 247
    const/4 v6, 0x3

    const/4 v7, 0x6

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 248
    const/4 v6, 0x2

    const/4 v7, 0x1

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 249
    const/4 v6, 0x2

    const/4 v7, 0x2

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 250
    const/4 v6, 0x2

    const/4 v7, 0x3

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 251
    const/4 v6, 0x2

    const/4 v7, 0x4

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 252
    const/4 v6, 0x2

    const/4 v7, 0x5

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    .line 246
    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mSARActionTable:[[I

    .line 255
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isPtcrb:Z

    .line 353
    new-instance v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mObserver:Landroid/database/ContentObserver;

    .line 360
    new-instance v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mObserverPsensor:Landroid/database/ContentObserver;

    .line 380
    new-instance v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;

    invoke-direct {v5, p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 464
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    .line 465
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    .line 466
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpenOld:Z

    .line 467
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mPSensorNegative:Z

    .line 468
    const/4 v5, 0x0

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    .line 469
    const/4 v5, 0x0

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oldAction:I

    .line 708
    new-instance v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$6;

    invoke-direct {v5, p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$6;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 280
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    .line 281
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 282
    sput-object p4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 283
    sput-object p2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    .line 284
    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v5, "DdsCardSelectionController"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 285
    .local v4, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 286
    new-instance v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    .line 288
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 289
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 290
    const-string/jumbo v5, "persist.radio.cmcc"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCMCCVersion:Z

    .line 291
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "oem.ctaSwitch.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCtaSwitchNotOn:Z

    .line 292
    const-string/jumbo v5, "persist.radio.testmode"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isTestMode:Z

    .line 293
    const-string/jumbo v5, "persist.radio.sar.enable"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSAREanble:Z

    .line 294
    const-string/jumbo v5, "persist.radio.efssync"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEfsSyncFlageEnable:Z

    .line 295
    const/4 v5, 0x0

    sput-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isFranceSAROpen:Z

    .line 297
    const-string/jumbo v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 298
    .local v3, "pm":Landroid/os/PowerManager;
    const-string/jumbo v5, "DdsCardSelectionController"

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 299
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 301
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mAudioManager:Landroid/media/AudioManager;

    .line 302
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 304
    new-instance v5, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v5, v6, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 306
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_163
    sget v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v2, v5, :cond_1bb

    .line 309
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    new-instance v6, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;-><init>(ILjava/lang/String;)V

    aput-object v6, v5, v2

    .line 310
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 311
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isPinLocked:Z

    .line 312
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 313
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    .line 314
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc

    invoke-interface {v5, v6, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 315
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd

    invoke-interface {v5, v6, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 316
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v2

    .line 317
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x1a

    const/4 v8, 0x0

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_163

    .line 323
    :cond_1bb
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isOPSoftSimEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isOPSoftSimEnable(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 324
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isOPSoftSimEnable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1ee

    .line 327
    :try_start_1e0
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 328
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->SOFT_SIM:Landroid/net/Uri;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mObserver:Landroid/database/ContentObserver;

    const/4 v8, 0x0

    .line 327
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1ee} :catch_222

    .line 333
    :cond_1ee
    :goto_1ee
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->registerPsensor()V

    .line 335
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 336
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string/jumbo v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string/jumbo v5, "qualcomm.intent.action.ACTION_MCFG_MBN_DONE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string/jumbo v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    const-string/jumbo v5, "Constructor - Exit"

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 344
    return-void

    .line 329
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_222
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_1ee
.end method

.method private acquireWakeLockWithTimeOut(J)V
    .registers 8
    .param p1, "delayMillis"    # J

    .prologue
    .line 1846
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1847
    :try_start_3
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1848
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1849
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1850
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v2

    .line 1852
    return-void

    .line 1846
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private backupDdsIccid(Ljava/lang/String;)V
    .registers 3
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    .line 1567
    const-string/jumbo v0, "persist.radio.bksim.iccid"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    return-void
.end method

.method private checkAllCardInsert()Z
    .registers 5

    .prologue
    .line 1416
    const/4 v0, 0x1

    .line 1417
    .local v0, "hasAllSimInsert":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_1f

    .line 1419
    if-eqz v0, :cond_1d

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v2, :cond_1d

    const/4 v0, 0x1

    .line 1417
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1419
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1a

    .line 1422
    :cond_1f
    return v0
.end method

.method private checkAllCardIsReady()Z
    .registers 4

    .prologue
    .line 862
    const/4 v0, 0x1

    .line 863
    .local v0, "hasAllSimReady":Z
    const/4 v1, 0x0

    .end local v0    # "hasAllSimReady":Z
    .local v1, "i":I
    :goto_2
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_13

    .line 865
    if-eqz v0, :cond_11

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-boolean v0, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 863
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 865
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "hasAllSimReady":Z
    goto :goto_e

    .line 868
    .end local v0    # "hasAllSimReady":Z
    :cond_13
    return v0
.end method

.method private checkAndSetConnectivityInstance()V
    .registers 3

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    .line 1492
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    .line 1494
    :cond_11
    return-void
.end method

.method private checkAnyCardIsLocked()Z
    .registers 4

    .prologue
    .line 873
    const/4 v0, 0x0

    .line 874
    .local v0, "hasAnyCardLocked":Z
    const/4 v1, 0x0

    .end local v0    # "hasAnyCardLocked":Z
    .local v1, "i":I
    :goto_2
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_13

    .line 876
    if-nez v0, :cond_11

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-boolean v0, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isPinLocked:Z

    .line 874
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 876
    :cond_11
    const/4 v0, 0x1

    .restart local v0    # "hasAnyCardLocked":Z
    goto :goto_e

    .line 879
    .end local v0    # "hasAnyCardLocked":Z
    :cond_13
    return v0
.end method

.method private clearWakeLock()V
    .registers 3

    .prologue
    .line 1856
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1857
    :try_start_3
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1859
    const-string/jumbo v0, "no wakelock release"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1a

    monitor-exit v1

    .line 1860
    return-void

    .line 1862
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1a

    monitor-exit v1

    .line 1864
    return-void

    .line 1856
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private doFlexMapping(I)V
    .registers 11
    .param p1, "subId"    # I

    .prologue
    .line 1638
    sget v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    new-array v6, v7, [Landroid/telephony/RadioAccessFamily;

    .line 1639
    .local v6, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v0, 0x0

    .line 1640
    .local v0, "atLeastOneMatch":Z
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v4

    .line 1641
    .local v4, "proxyController":Lcom/android/internal/telephony/ProxyController;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    sget v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v7, :cond_59

    .line 1642
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v7, v1

    .line 1644
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 1645
    .local v2, "id":I
    if-ne v2, p1, :cond_54

    .line 1646
    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v5

    .line 1647
    .local v5, "raf":I
    const/4 v0, 0x1

    .line 1651
    :goto_1d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[doFlexMapping] phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " RAF="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1652
    new-instance v7, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v7, v1, v5}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v7, v6, v1

    .line 1641
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1649
    .end local v5    # "raf":I
    :cond_54
    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    move-result v5

    .restart local v5    # "raf":I
    goto :goto_1d

    .line 1654
    .end local v2    # "id":I
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "raf":I
    :cond_59
    if-eqz v0, :cond_63

    .line 1661
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    .line 1666
    :goto_62
    return-void

    .line 1664
    :cond_63
    const-string/jumbo v7, "[doFlexMapping] no valid subId\'s found - not updating."

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_62
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .registers 2

    .prologue
    .line 271
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    if-nez v0, :cond_d

    .line 272
    const-string/jumbo v0, "DdsCardSelectionController"

    const-string/jumbo v1, "DdsCardSelectionController.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_d
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    return-object v0
.end method

.method private getMainStackPhoneId()I
    .registers 7

    .prologue
    .line 1604
    const/4 v1, 0x0

    .line 1605
    .local v1, "modemUuId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1606
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v3, -0x1

    .line 1608
    .local v3, "primayStackPhoneId":I
    const/4 v0, 0x0

    .end local v1    # "modemUuId":Ljava/lang/String;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    .local v0, "i":I
    :goto_4
    sget v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v4, :cond_6a

    .line 1610
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v4, v0

    .line 1611
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_11

    .line 1608
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1613
    :cond_11
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v1

    .line 1614
    .local v1, "modemUuId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Logical Modem id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    .line 1615
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e

    .line 1616
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    .line 1615
    if-nez v4, :cond_e

    .line 1620
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_e

    .line 1621
    move v3, v0

    .line 1622
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Primay Stack phone id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " selected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    .line 1628
    .end local v1    # "modemUuId":Ljava/lang/String;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_6a
    const/4 v4, -0x1

    if-ne v3, v4, :cond_74

    .line 1629
    const-string/jumbo v4, "Returning default phone id"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    .line 1630
    const/4 v3, 0x0

    .line 1633
    :cond_74
    return v3
.end method

.method private getNetworkModeFromDB(I)I
    .registers 10
    .param p1, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 820
    const/4 v0, 0x0

    .line 821
    .local v0, "mQtiSubscriptionController":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    .line 822
    .local v0, "mQtiSubscriptionController":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v3

    .line 826
    .local v3, "subId":[I
    if-eqz v3, :cond_5c

    array-length v4, v3

    if-lez v4, :cond_5c

    .line 827
    aget v4, v3, v7

    invoke-virtual {v0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v4

    .line 826
    if-eqz v4, :cond_5c

    .line 828
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 829
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 830
    sget v6, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 828
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 831
    .local v1, "networkMode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " get sub based N/W mode, val["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    .line 842
    :goto_5b
    return v1

    .line 834
    .end local v1    # "networkMode":I
    :cond_5c
    :try_start_5c
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 835
    const-string/jumbo v5, "preferred_network_mode"

    .line 834
    invoke-static {v4, v5, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_68
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5c .. :try_end_68} :catch_8c

    move-result v1

    .line 840
    .restart local v1    # "networkMode":I
    :goto_69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " get slot based N/W mode, val["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    goto :goto_5b

    .line 836
    .end local v1    # "networkMode":I
    :catch_8c
    move-exception v2

    .line 837
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v4, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    .line 838
    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .restart local v1    # "networkMode":I
    goto :goto_69
.end method

.method private getPhoneMatchImei()V
    .registers 1

    .prologue
    .line 1488
    return-void
.end method

.method private getPrimaryICCID()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1141
    const/4 v0, 0x0

    .line 1142
    .local v0, "iccid":Ljava/lang/String;
    const-string/jumbo v1, "persist.radio.ddssim.iccid"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, "iccid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getPrimaryICCID,DDS_ICCId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1144
    return-object v0
.end method

.method private getPrimaryNetworkType()I
    .registers 4

    .prologue
    .line 1159
    const-string/jumbo v1, "persist.radio.ddssim.rat"

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1160
    .local v0, "network_type":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getPrimaryNetworkType  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1161
    return v0
.end method

.method private getPrimarySlot()I
    .registers 5

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1127
    const-string/jumbo v2, "config_current_primary_sub"

    const/4 v3, -0x1

    .line 1126
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1129
    .local v0, "slotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getPrimarySlot,CONFIG_CURRENT_PRIMARY_SUB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1131
    return v0
.end method

.method private getUiccProvisionStatus(I)I
    .registers 4
    .param p1, "slotId"    # I

    .prologue
    .line 1239
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v0

    .line 1240
    .local v0, "extTelService":Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    if-eqz v0, :cond_f

    .line 1241
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    return v1

    .line 1244
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private handleAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V
    .registers 13
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 726
    const/4 v2, 0x0

    .line 729
    .local v2, "isAllSimInsert":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "detect iccid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 730
    if-eqz p2, :cond_48

    .line 732
    invoke-direct {p0, p1, v8, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->updateCurrentCardStatus(IILjava/lang/String;)V

    .line 733
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 734
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iput-boolean v7, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 737
    :cond_48
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v2

    .line 739
    .local v2, "isAllSimInsert":Z
    const-string/jumbo v3, "fasle"

    const-string/jumbo v4, "persist.radio.firstboot"

    invoke-static {v4, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9f

    .line 741
    const-string/jumbo v3, "this time is first boot up"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 742
    const-string/jumbo v3, "persist.radio.firstboot"

    const-string/jumbo v4, "fasle"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 744
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    rsub-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 746
    const-wide/16 v4, 0x3e8

    :try_start_7d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_a0

    .line 751
    :goto_80
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 752
    const-string/jumbo v4, "airplane_mode_on"

    .line 751
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 753
    .local v0, "airplaneModeOn":I
    if-nez v0, :cond_9f

    .line 754
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 755
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    rsub-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 758
    .end local v0    # "airplaneModeOn":I
    :cond_9f
    return-void

    .line 747
    :catch_a0
    move-exception v1

    .line 748
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    goto :goto_80
.end method

.method private handleSarEvet()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1752
    const/4 v0, 0x0

    .line 1753
    .local v0, "apBand":I
    const/4 v2, 0x0

    .line 1754
    .local v2, "isWifiHot_2G":Z
    const/4 v4, 0x0

    .line 1755
    .local v4, "wifihot_action":I
    const/4 v1, 0x0

    .line 1757
    .local v1, "calling_action":I
    sget-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSAREanble:Z

    if-eqz v5, :cond_e

    sget-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isFranceSAROpen:Z

    if-eqz v5, :cond_f

    .line 1759
    :cond_e
    return-void

    .line 1762
    :cond_f
    iget-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mPSensorNegative:Z

    if-eqz v5, :cond_38

    .line 1764
    const/4 v1, 0x0

    .line 1782
    :goto_14
    iget-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    if-eqz v5, :cond_54

    .line 1784
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1785
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 1786
    if-nez v0, :cond_4e

    .line 1788
    const/4 v4, 0x1

    .line 1804
    :goto_27
    add-int v5, v4, v1

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    .line 1806
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oldAction:I

    if-ne v5, v6, :cond_56

    .line 1808
    const-string/jumbo v5, "SAR: no action change, return"

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1809
    return-void

    .line 1768
    :cond_38
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 1769
    .local v3, "mode":I
    const/4 v5, 0x2

    if-eq v3, v5, :cond_44

    .line 1770
    const/4 v5, 0x3

    if-ne v3, v5, :cond_46

    .line 1774
    :cond_44
    const/4 v1, 0x3

    .line 1773
    goto :goto_14

    .line 1771
    :cond_46
    if-eq v3, v9, :cond_44

    .line 1772
    sget-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isTestMode:Z

    if-nez v5, :cond_44

    .line 1778
    const/4 v1, 0x0

    goto :goto_14

    .line 1790
    .end local v3    # "mode":I
    :cond_4e
    if-ne v0, v9, :cond_52

    .line 1792
    const/4 v4, 0x2

    goto :goto_27

    .line 1796
    :cond_52
    const/4 v4, 0x0

    goto :goto_27

    .line 1801
    :cond_54
    const/4 v4, 0x0

    goto :goto_27

    .line 1811
    :cond_56
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oldAction:I

    .line 1812
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mSARActionTable:[[I

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    aget-object v6, v6, v7

    aget v6, v6, v8

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mSARActionTable:[[I

    iget v8, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    aget-object v7, v7, v8

    aget v7, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->setFactoryModeModemGPIO(II)Z

    .line 1813
    return-void
.end method

.method private handleTimeOut()V
    .registers 5

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v0

    .line 940
    .local v0, "phoneId":I
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemSetDefaultDataSubId(I)V

    .line 943
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "persist.radio.ptcrb.enable"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isPtcrb:Z

    .line 944
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isPtcrb:Z

    if-nez v1, :cond_38

    .line 945
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->hasCdmaCardInsert()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 948
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAnyCardIsLocked()Z

    move-result v1

    if-nez v1, :cond_33

    .line 950
    const-string/jumbo v1, "No SIM is Locked, and all SIM is READY"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 951
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPreferredCdmaNetworkType()V

    .line 963
    :cond_33
    :goto_33
    return-void

    .line 956
    :cond_34
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPreferredGWNetworkType()V

    goto :goto_33

    .line 959
    :cond_38
    const-string/jumbo v1, "PTCRB prop is on, we won\'t set rat to modem after sim state change"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_33
.end method

.method private hasCdmaCardInsert()Z
    .registers 5

    .prologue
    .line 1056
    const/4 v0, 0x0

    .line 1057
    .local v0, "cdmaCardInsert":Z
    const/4 v1, 0x0

    .line 1058
    .local v1, "index":I
    const/4 v1, 0x0

    :goto_3
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_16

    .line 1060
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    if-eqz v2, :cond_39

    .line 1062
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    if-eqz v2, :cond_39

    .line 1064
    const/4 v0, 0x1

    .line 1068
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasCdmaCardInsert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1069
    return v0

    .line 1058
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private hasTwoCdmaCardInsert()Z
    .registers 5

    .prologue
    .line 1073
    const/4 v1, 0x1

    .line 1075
    .local v1, "twoCdmaCardInsert":Z
    const/4 v0, 0x0

    .end local v1    # "twoCdmaCardInsert":Z
    .local v0, "index":I
    :goto_2
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v2, :cond_1b

    .line 1076
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v0

    if-eqz v2, :cond_19

    .line 1077
    if-eqz v1, :cond_17

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v0

    iget-boolean v1, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 1075
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1077
    :cond_17
    const/4 v1, 0x0

    .restart local v1    # "twoCdmaCardInsert":Z
    goto :goto_14

    .line 1079
    .end local v1    # "twoCdmaCardInsert":Z
    :cond_19
    const/4 v1, 0x0

    .restart local v1    # "twoCdmaCardInsert":Z
    goto :goto_14

    .line 1082
    .end local v1    # "twoCdmaCardInsert":Z
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasTwoCdmaCardInsert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1083
    return v1
.end method

.method private informDdsToRil(I)V
    .registers 6
    .param p1, "ddsSubId"    # I

    .prologue
    .line 1738
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 1739
    .local v0, "ddsPhoneId":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1740
    const-string/jumbo v2, "Oem hook service is not ready yet"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1741
    return-void

    .line 1744
    :cond_17
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_46

    .line 1745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "InformDdsToRil rild= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", DDS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1746
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(II)V

    .line 1744
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1748
    :cond_46
    return-void
.end method

.method private isCdmaRat(II)Z
    .registers 6
    .param p1, "network_type"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1343
    const/4 v0, 0x0

    .line 1344
    .local v0, "iscdmarat":Z
    const/4 v1, 0x5

    if-eq v1, p1, :cond_7

    .line 1345
    const/4 v1, 0x7

    if-ne v1, p1, :cond_2b

    .line 1353
    :cond_7
    :goto_7
    const/4 v0, 0x1

    .line 1355
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCdmaRat  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1356
    return v0

    .line 1346
    :cond_2b
    const/16 v1, 0xa

    if-eq v1, p1, :cond_7

    .line 1347
    const/4 v1, 0x6

    if-eq v1, p1, :cond_7

    .line 1348
    const/16 v1, 0x8

    if-eq v1, p1, :cond_7

    .line 1349
    const/4 v1, 0x4

    if-eq v1, p1, :cond_7

    .line 1350
    const/16 v1, 0x15

    if-eq v1, p1, :cond_7

    .line 1351
    const/16 v1, 0x16

    if-ne v1, p1, :cond_8

    goto :goto_7
.end method

.method private isOPSoftSimEnable(Landroid/content/Context;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1708
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1709
    const-string/jumbo v3, "com.redteamobile.virtual.softsim"

    const/4 v4, 0x0

    .line 1708
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_10

    move-result-object v1

    .line 1714
    :goto_d
    if-nez v1, :cond_16

    .line 1715
    return v5

    .line 1710
    :catch_10
    move-exception v0

    .line 1711
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 1712
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_d

    .line 1717
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_16
    const/4 v2, 0x1

    return v2
.end method

.method private isOnlyOneCardInsert()Z
    .registers 5

    .prologue
    .line 1427
    const/4 v1, 0x0

    .line 1428
    .local v1, "onlyOneCard":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v2, :cond_23

    .line 1430
    if-nez v1, :cond_1d

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    .line 1431
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    .line 1428
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1430
    :cond_1d
    const/4 v1, 0x1

    goto :goto_1a

    .line 1431
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1a

    .line 1430
    :cond_21
    const/4 v1, 0x0

    goto :goto_1a

    .line 1434
    :cond_23
    if-eqz v1, :cond_2c

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_2b
    return v2

    :cond_2c
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method private isRadioAvailable(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .prologue
    .line 857
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private isSubProvisioned(I)Z
    .registers 5
    .param p1, "phoneId"    # I

    .prologue
    .line 1251
    const/4 v0, 0x1

    .line 1253
    .local v0, "isSubIdUsable":Z
    if-eqz v0, :cond_21

    .line 1254
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Invalid phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    .line 1256
    const/4 v0, 0x0

    .line 1265
    :cond_21
    :goto_21
    return v0

    .line 1258
    :cond_22
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getUiccProvisionStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    .line 1259
    const/4 v0, 0x0

    .line 1261
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSubProvisioned, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_21
.end method

.method private isTestCard()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 1514
    const/4 v1, 0x0

    .line 1515
    .local v1, "isTestCard":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1516
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    :cond_11
    if-nez v3, :cond_14

    .line 1517
    return v1

    .line 1519
    :cond_14
    const/4 v0, 0x0

    .end local v1    # "isTestCard":Z
    .local v0, "i":I
    :goto_15
    if-nez v1, :cond_32

    sget v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v3, :cond_32

    .line 1521
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1522
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_2f

    .line 1524
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v1, 0x0

    .line 1519
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1528
    :cond_32
    return v1
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1498
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAndSetConnectivityInstance()V

    .line 1500
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 1501
    .local v3, "wifiRegexs":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "intf$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1502
    .local v0, "intf":Ljava/lang/String;
    array-length v6, v3

    move v4, v5

    :goto_1c
    if-ge v4, v6, :cond_e

    aget-object v2, v3, v4

    .line 1503
    .local v2, "regex":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 1504
    const/4 v4, 0x1

    return v4

    .line 1502
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1509
    .end local v0    # "intf":Ljava/lang/String;
    .end local v2    # "regex":Ljava/lang/String;
    :cond_2b
    return v5
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1722
    const-string/jumbo v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1730
    const-string/jumbo v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1726
    const-string/jumbo v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .registers 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1735
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "qRCC"    # Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 260
    const-string/jumbo v0, "DdsCardSelectionController"

    const-string/jumbo v1, "make and getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    if-nez v0, :cond_17

    .line 262
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;-><init>(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .line 266
    :goto_14
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    return-object v0

    .line 264
    :cond_17
    const-string/jumbo v0, "DdsCardSelectionController"

    const-string/jumbo v1, "DdsCardSelectionController.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private notifyUiDdsChanaged(Z)V
    .registers 4
    .param p1, "dds_chanage"    # Z

    .prologue
    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyUiDdsChanaged  dds_chanage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1574
    return-void
.end method

.method private oemSendSubscriptionSettings()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1382
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 1383
    .local v0, "ddsSubId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v3

    .line 1385
    .local v3, "phoneId":I
    if-gez v3, :cond_1a

    .line 1387
    const-string/jumbo v5, "phoneId is invalid,maybe SIM card plug out, return"

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1388
    return-void

    .line 1390
    :cond_1a

    const/4 v1, 0x0

    .line 1391
    .local v1, "mPhoneSwitcher":Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    if-eqz v1, :cond_3c

    .line 1393
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "re-config dds info phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->oemSendDdsSettingConfig(I)V

    .line 1397
    :cond_3c
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v5, v3

    .line 1398
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 1399
    .local v4, "subId":[I
    if-eqz v4, :cond_64

    array-length v5, v4

    if-lez v5, :cond_64

    .line 1400
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    aget v6, v4, v7

    invoke-virtual {v5, v6}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v5

    .line 1399
    if-eqz v5, :cond_64

    .line 1401
    iget-object v5, v2, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1402
    iget-object v6, v2, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    move-result v6

    .line 1401
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataEnabled(Z)V

    .line 1404
    :cond_64
    sget-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    if-eqz v5, :cond_6b

    .line 1405
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processCmccDemand()V

    .line 1412
    :cond_6b
    return-void
.end method

.method private oemSetDefaultDataSubId(I)V
    .registers 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 476
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 477
    .local v1, "subId":[I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 478
    .local v0, "isSubActive":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oemSetDefaultDataSubId isSubActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 479
    if-eqz v0, :cond_46

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->softSimEnable:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_46

    .line 481
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 483
    :cond_46
    return-void
.end method

.method private onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .registers 10
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x0

    .line 883
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1f

    .line 884
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 886
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 884
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    .line 887
    return-void

    .line 890
    :cond_1f
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 892
    .local v2, "ics":Lcom/android/internal/telephony/uicc/IccCardStatus;
    const/4 v3, 0x0

    .line 893
    .local v3, "isCDMACard":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " applications"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 894
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3f
    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v4, v4

    if-ge v1, v4, :cond_78

    .line 895
    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v4, v4, v1

    iget-object v0, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 897
    .local v0, "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v4, :cond_52

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v4, :cond_75

    .line 899
    :cond_52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CDMA card insert app_type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 900
    const/4 v3, 0x1

    .line 894
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 903
    .end local v0    # "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_78
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-boolean v3, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 905
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    if-nez v4, :cond_9c

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9c

    .line 907
    const/16 v4, 0x1770

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    .line 908
    return-void

    .line 910
    :cond_9c
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardIsReady()Z

    move-result v4

    if-nez v4, :cond_b2

    .line 912
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isOnlyOneCardInsert()Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 913
    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    .line 914
    return-void

    .line 916
    :cond_ac
    const/16 v4, 0xbb8

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    .line 917
    return-void

    .line 921
    :cond_b2
    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    .line 923
    return-void
.end method

.method private processCmccDemand()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 1533
    const/4 v3, 0x0

    .line 1534
    .local v3, "hasCmccCardInsert":Z
    const-string/jumbo v7, "persist.radio.bksim.iccid"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1535
    .local v0, "bk_iccid":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryICCID()Ljava/lang/String;

    move-result-object v2

    .line 1536
    .local v2, "ddsIccid":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v5, v7, 0x1

    .line 1538
    .local v5, "isDdschanaged":Z
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->backupDdsIccid(Ljava/lang/String;)V

    .line 1540
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v7

    if-eqz v7, :cond_22

    sget-boolean v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCMCCVersion:Z

    :goto_1f
    if-nez v7, :cond_24

    .line 1542
    return-void

    :cond_22
    move v7, v8

    .line 1540
    goto :goto_1f

    .line 1545
    :cond_24
    sput-boolean v8, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    .line 1547
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    sget v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v4, v7, :cond_4d

    .line 1549
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccidList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1550
    .local v6, "it":Ljava/util/Iterator;
    :cond_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 1551
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1552
    .local v1, "cmcciccid":Ljava/lang/String;
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 1554
    const/4 v3, 0x1

    .line 1547
    .end local v1    # "cmcciccid":Ljava/lang/String;
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1559
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_4d
    if-nez v3, :cond_50

    .line 1560
    return-void

    .line 1562
    :cond_50
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->notifyUiDdsChanaged(Z)V

    .line 1563
    return-void
.end method

.method private processMbnActivatedDone()V
    .registers 5

    .prologue
    .line 1478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v2, :cond_14

    .line 1479
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getNetworkModeFromDB(I)I

    move-result v1

    .line 1481
    .local v1, "type":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1478
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1483
    .end local v1    # "type":I
    :cond_14
    return-void
.end method

.method private processSimStatusChange(I)V
    .registers 8
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1439
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iput-boolean v4, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 1440
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iput v4, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    .line 1441
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v1, :cond_22

    .line 1443
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    .line 1447
    :cond_22
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v1, :cond_4e

    .line 1449
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    rsub-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    .line 1450
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v1, :cond_4e

    .line 1452
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iput v4, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    .line 1456
    :cond_4e
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1458
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isOnlyOneCardInsert()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1460
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemSetDefaultDataSubId(I)V

    .line 1461
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 1466
    :cond_6d
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v1, p1

    .line 1467
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1468
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_84

    .line 1470
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x13

    .line 1473
    :cond_84
    return-void
.end method

.method private processSoftSimIccidChange()V
    .registers 7

    .prologue
    const/16 v4, 0x1c

    .line 1671
    const/4 v1, 0x0

    .line 1672
    .local v1, "isSoftSimIn":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v2, :cond_11

    .line 1674
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSoftSIM(I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1675
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mSoftsimPhoneId:I

    .line 1676
    const/4 v1, 0x1

    .line 1680
    :cond_11
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->softSimEnable:Z

    .line 1681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "softSimEnable status  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->softSimEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1683
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->softSimEnable:Z

    if-nez v2, :cond_47

    .line 1684
    const-string/jumbo v2, "sendMessageDelayed  EVENT_RESET_DDS"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1685
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1686
    const-wide/16 v4, 0xfa0

    .line 1685
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1692
    :goto_43
    return-void

    .line 1672
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1688
    :cond_47
    const-string/jumbo v2, "removeMessages  EVENT_RESET_DDS"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1689
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_43
.end method

.method private processTMOCardAsdds()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1578
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v0

    .line 1579
    .local v0, "ddsPhoneId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v5

    .line 1580
    .local v5, "subId":[I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v7

    aget v8, v5, v9

    invoke-virtual {v7, v8}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v2

    .line 1581
    .local v2, "isSubActive":Z
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getMainStackPhoneId()I

    move-result v4

    .line 1582
    .local v4, "mainStackPhoneId":I
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v7, v7, v0

    iget-object v1, v7, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    .line 1584
    .local v1, "iccid":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processTMOCardAsDDS mstackphoneId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " iccid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ddsphoneId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1585
    if-eq v4, v0, :cond_58

    xor-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_59

    .line 1586
    :cond_58
    return-void

    .line 1588
    :cond_59
    if-eqz v1, :cond_78

    .line 1590
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTMOIccidList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1591
    .local v3, "it":Ljava/util/Iterator;
    :cond_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_78

    .line 1592
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1593
    .local v6, "tmpiccid":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 1595
    aget v7, v5, v9

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->doFlexMapping(I)V

    .line 1600
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v6    # "tmpiccid":Ljava/lang/String;
    :cond_78
    return-void
.end method

.method private registerPsensor()V
    .registers 5

    .prologue
    .line 347
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 349
    const-string/jumbo v1, "display_ctrl_psensor_positive"

    .line 348
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 350
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mObserverPsensor:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 347
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 352
    return-void
.end method

.method private savePrefNetworkInDb(II)V
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "networkMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 806
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 807
    .local v1, "subId":[I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v5

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 808
    .local v0, "isSubActive":Z
    if-eqz v0, :cond_34

    .line 810
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 810
    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 814
    :cond_34
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 815
    const-string/jumbo v3, "preferred_network_mode"

    .line 814
    invoke-static {v2, v3, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 816
    return-void
.end method

.method private savePrimaryICCID(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " savePrimaryICCID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 1152
    const-string/jumbo v0, "persist.radio.ddssim.iccid"

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    :cond_35
    return-void
.end method

.method private savePrimarySlot(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1136
    const-string/jumbo v1, "config_current_primary_sub"

    .line 1135
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1137
    return-void
.end method

.method private sendSetNetWorkTypeMsg(I)V
    .registers 6
    .param p1, "delay"    # I

    .prologue
    const/16 v3, 0xf

    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSetNetWorkTypeMsg delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 928
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 929
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 930
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 931
    return-void
.end method

.method private setPreferredCdmaNetworkType()V
    .registers 10

    .prologue
    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, "cdmaPhoneId":I
    const/4 v2, 0x1

    .line 969
    .local v2, "gwPhoneId":I
    const/16 v1, 0x16

    .line 970
    .local v1, "cdma_network_type":I
    const/16 v3, 0x14

    .line 971
    .local v3, "gw_network_type":I
    const/4 v5, -0x1

    .line 972
    .local v5, "primaryPhoneId":I
    const/4 v4, 0x0

    .line 974
    .local v4, "primaryNetworkType":I
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v5

    .line 975
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryNetworkType()I

    move-result v4

    .line 978
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v7, v7, v5

    iget-boolean v7, v7, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    if-eqz v7, :cond_4a

    .line 980
    const-string/jumbo v7, "setPreferredCdmaNetworkType cdma card on dds"

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 981
    move v0, v5

    .line 982
    rsub-int/lit8 v2, v5, 0x1

    .line 984
    invoke-direct {p0, v4, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 986
    move v1, v4

    .line 992
    :goto_28
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    .line 1012
    :goto_2b
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 1013
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    .line 1015
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 1016
    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 1017
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x10

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 1018
    .local v6, "response":Landroid/os/Message;
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-virtual {v7, v2, v3, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    .line 1019
    return-void

    .line 990
    .end local v6    # "response":Landroid/os/Message;
    :cond_45
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchGW2CDMARat(I)I

    move-result v1

    goto :goto_28

    .line 996
    :cond_4a
    const-string/jumbo v7, "setPreferredCdmaNetworkType GW card on dds"

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 997
    move v2, v5

    .line 998
    rsub-int/lit8 v0, v5, 0x1

    .line 1000
    invoke-direct {p0, v4, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 1002
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchCDMA2GWRat(I)I

    move-result v3

    .line 1009
    :goto_5d
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    goto :goto_2b

    .line 1006
    :cond_61
    move v3, v4

    goto :goto_5d
.end method

.method private setPreferredGWNetworkType()V
    .registers 9

    .prologue
    .line 1023
    const/4 v0, 0x0

    .line 1024
    .local v0, "gwOtherPhoneId":I
    const/16 v1, 0x14

    .line 1025
    .local v1, "gw_dds_network_type":I
    const/16 v2, 0x14

    .line 1026
    .local v2, "gw_non_network_type":I
    const/4 v4, -0x1

    .line 1027
    .local v4, "primaryPhoneId":I
    const/4 v3, 0x0

    .line 1029
    .local v3, "primaryNetworkType":I
    const-string/jumbo v6, "setPreferredGWNetworkType all card is GW"

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v4

    .line 1031
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryNetworkType()I

    move-result v3

    .line 1033
    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1035
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchCDMA2GWRat(I)I

    move-result v1

    .line 1042
    :goto_1f
    rsub-int/lit8 v0, v4, 0x1

    .line 1044
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 1045
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    .line 1046
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    .line 1048
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 1049
    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 1050
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x10

    invoke-virtual {v6, v7, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 1051
    .local v5, "response":Landroid/os/Message;
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-virtual {v6, v0, v2, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    .line 1052
    return-void

    .line 1039
    .end local v5    # "response":Landroid/os/Message;
    :cond_3e
    move v1, v3

    goto :goto_1f
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .registers 7
    .param p1, "subId"    # I

    .prologue
    .line 1367
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1369
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1371
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1372
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 1373
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 1374
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v4

    if-ne p1, v4, :cond_10

    .line 1375
    return-object v1

    .line 1378
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_29
    const/4 v4, 0x0

    return-object v4
.end method

.method private switchAll2EURat(I)I
    .registers 5
    .param p1, "network_type"    # I

    .prologue
    .line 1319
    const/16 v0, 0x9

    .line 1320
    .local v0, "type":I
    sparse-switch p1, :sswitch_data_26

    .line 1334
    const/16 v0, 0x9

    .line 1337
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchAll2EURat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1338
    return v0

    .line 1324
    :sswitch_1f
    const/16 v0, 0x9

    .line 1325
    goto :goto_7

    .line 1328
    :sswitch_22
    const/4 v0, 0x3

    .line 1329
    goto :goto_7

    .line 1331
    :sswitch_24
    const/4 v0, 0x1

    .line 1332
    goto :goto_7

    .line 1320
    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_24
        0x3 -> :sswitch_22
        0x9 -> :sswitch_1f
        0x12 -> :sswitch_22
        0x14 -> :sswitch_1f
    .end sparse-switch
.end method

.method private switchCDMA2GWRat(I)I
    .registers 5
    .param p1, "network_type"    # I

    .prologue
    .line 1294
    const/16 v0, 0x14

    .line 1295
    .local v0, "type":I
    sparse-switch p1, :sswitch_data_28

    .line 1310
    const/16 v0, 0x14

    .line 1313
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchCDMA2GWRat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1314
    return v0

    .line 1300
    :sswitch_1f
    const/16 v0, 0x14

    .line 1301
    goto :goto_7

    .line 1304
    :sswitch_22
    const/16 v0, 0x12

    .line 1305
    goto :goto_7

    .line 1307
    :sswitch_25
    const/4 v0, 0x1

    .line 1308
    goto :goto_7

    .line 1295
    nop

    :sswitch_data_28
    .sparse-switch
        0x5 -> :sswitch_25
        0x7 -> :sswitch_22
        0x8 -> :sswitch_1f
        0xa -> :sswitch_1f
        0x15 -> :sswitch_22
        0x16 -> :sswitch_1f
    .end sparse-switch
.end method

.method private switchGW2CDMARat(I)I
    .registers 5
    .param p1, "network_type"    # I

    .prologue
    .line 1271
    const/16 v0, 0xa

    .line 1272
    .local v0, "type":I
    sparse-switch p1, :sswitch_data_26

    .line 1285
    const/16 v0, 0xa

    .line 1288
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchGW2CDMARat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1289
    return v0

    .line 1276
    :sswitch_1f
    const/16 v0, 0x16

    .line 1277
    goto :goto_7

    .line 1282
    :sswitch_22
    const/16 v0, 0x15

    .line 1283
    goto :goto_7

    .line 1272
    nop

    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_22
        0x1 -> :sswitch_22
        0x3 -> :sswitch_22
        0x9 -> :sswitch_1f
        0x12 -> :sswitch_22
        0x14 -> :sswitch_1f
    .end sparse-switch
.end method

.method private updateCurrentCardStatus(IILjava/lang/String;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "status"    # I
    .param p3, "iccid"    # Ljava/lang/String;

    .prologue
    .line 848
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    .line 849
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iput-object p3, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 853
    :goto_c
    return-void

    .line 850
    :catch_d
    move-exception v0

    .line 851
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method


# virtual methods
.method public getPrevPrimaryPhoneId()I
    .registers 8

    .prologue
    .line 1175
    const/4 v3, 0x0

    .line 1177
    .local v3, "phoneId":I
    const/4 v2, 0x0

    .line 1179
    .local v2, "isSubActive":Z
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryICCID()Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, "iccid":Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 1183
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_9
    sget v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v5, :cond_2b

    .line 1185
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_28

    .line 1187
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1185
    if-eqz v5, :cond_28

    .line 1189
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSubProvisioned(I)Z

    move-result v5

    .line 1185
    if-eqz v5, :cond_28

    .line 1192
    return v1

    .line 1183
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1197
    .end local v1    # "index":I
    :cond_2b
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimarySlot()I

    move-result v3

    .line 1198
    const/4 v5, -0x1

    if-eq v3, v5, :cond_41

    .line 1200
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_41

    .line 1202
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSubProvisioned(I)Z

    move-result v5

    .line 1198
    if-eqz v5, :cond_41

    .line 1205
    return v3

    .line 1209
    :cond_41
    const/4 v3, 0x0

    .line 1210
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 1212
    .local v4, "subId":[I
    if-eqz v4, :cond_72

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_72

    .line 1214
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSubProvisioned(I)Z

    move-result v5

    .line 1212
    if-eqz v5, :cond_72

    .line 1217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " getPrevPrimaryPhoneId 1 phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1218
    return v3

    .line 1221
    :cond_72
    const/4 v3, 0x1

    .line 1222
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 1224
    if-eqz v4, :cond_a3

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_a3

    .line 1226
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSubProvisioned(I)Z

    move-result v5

    .line 1224
    if-eqz v5, :cond_a3

    .line 1229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " getPrevPrimaryPhoneId 2 phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1230
    return v3

    .line 1233
    :cond_a3
    const-string/jumbo v5, " getPrevPrimaryPhoneId  default phoneId 0 "

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1234
    const/4 v5, 0x0

    return v5
.end method

.method handleEX(Landroid/os/AsyncResult;I)V
    .registers 11
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 1817
    const/4 v1, 0x0

    .line 1818
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    const/16 v3, 0x9

    .line 1819
    .local v3, "rat":I
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_23

    .line 1822
    :try_start_7
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .end local v1    # "ex":Lcom/android/internal/telephony/CommandException;
    check-cast v1, Lcom/android/internal/telephony/CommandException;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_24

    .line 1827
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getNetworkModeFromDB(I)I

    move-result v3

    .line 1828
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-virtual {v4, v6, p2, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1829
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1831
    .end local v1    # "ex":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_23
    return-void

    .line 1823
    :catch_24
    move-exception v0

    .line 1824
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    .line 1825
    return-void
.end method

.method public handleSar2France(Z)V
    .registers 5
    .param p1, "open"    # Z

    .prologue
    const/4 v2, 0x7

    .line 1835
    sput-boolean p1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isFranceSAROpen:Z

    .line 1836
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isFranceSAROpen:Z

    if-eqz v0, :cond_e

    .line 1838
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->setFactoryModeModemGPIO(II)Z

    .line 1842
    :goto_d
    return-void

    .line 1840
    :cond_e
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->setFactoryModeModemGPIO(II)Z

    goto :goto_d
.end method

.method public handleSimAbsentforSelectMultiMode(I)V
    .registers 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 768
    const/4 v1, 0x0

    .line 769
    .local v1, "maxNumRafBit":I
    const/4 v0, -0x1

    .line 770
    .local v0, "mainStackPhoneId":I
    const/4 v2, 0x0

    .line 772
    .local v2, "numRafSupported":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "card absent phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 774
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 776
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v3, :cond_39

    .line 778
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_39

    .line 780
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    .line 783
    :cond_39
    invoke-direct {p0, p1, v5, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->updateCurrentCardStatus(IILjava/lang/String;)V

    .line 784
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iput-boolean v5, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 785
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iput-boolean v5, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isPinLocked:Z

    .line 786
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iput-boolean v5, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 788
    const-string/jumbo v3, "true"

    const-string/jumbo v4, "persist.radio.ptcrb.enable"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isPtcrb:Z

    .line 789
    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isPtcrb:Z

    if-eqz v3, :cond_6b

    .line 790
    const-string/jumbo v3, "isPtcrb is true, we won\'t set rat when sim absent"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 793
    :cond_6b
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v3, :cond_ae

    .line 795
    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isPtcrb:Z

    xor-int/lit8 v3, v3, 0x1

    .line 793
    if-eqz v3, :cond_ae

    .line 797
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "oem.ctaSwitch.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 793
    if-eqz v3, :cond_ae

    .line 799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "card absent phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 800
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getMainStackPhoneId()I

    move-result v0

    .line 801
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x8

    invoke-interface {v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 803
    :cond_ae
    return-void
.end method

.method public isSoftSIM(I)Z
    .registers 4
    .param p1, "slotId"    # I

    .prologue
    .line 1695
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v0

    .line 1696
    .local v0, "extTelService":Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    if-eqz v0, :cond_f

    .line 1697
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isSoftSIM(I)Z

    move-result v1

    return v1

    .line 1700
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public oemDdsSwitch(IZ)V
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "autoSwitch"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1090
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 1092
    .local v2, "subId":[I
    if-nez v2, :cond_23

    .line 1094
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oemDdsSwitch subId is null  phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1095
    return-void

    .line 1097
    :cond_23
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 1099
    .local v0, "isSubActive":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oemDdsSwitch isSubActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1101
    if-eqz v0, :cond_95

    .line 1103
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    .line 1104
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 1105
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getNetworkModeFromDB(I)I

    move-result v1

    .line 1106
    .local v1, "primaryNetWork":I
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    .line 1107
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 1108
    if-eqz p2, :cond_80

    .line 1110
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultSmsSubId(I)V

    .line 1111
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultVoiceSubId(I)V

    .line 1112
    aget v3, v2, v5

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setConfigOfChangeDefaultVoiceSub(I)V

    .line 1115
    :cond_80
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->hasTwoCdmaCardInsert()Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1117
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPreferredCdmaNetworkType()V

    .line 1119
    :cond_89
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->backupDdsIccid(Ljava/lang/String;)V

    .line 1120
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemSendSubscriptionSettings()V

    .line 1122
    .end local v1    # "primaryNetWork":I
    :cond_95
    return-void
.end method

.method public sendAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 722
    return-void
.end method

.method public sendSimAbsentforSelectMultiMode(I)V
    .registers 6
    .param p1, "slotId"    # I

    .prologue
    .line 762
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 763
    return-void
.end method

.method public setConfigOfChangeDefaultVoiceSub(I)V
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 1362
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 1363
    .local v0, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v0}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 1364
    return-void
.end method

.method public setPrimaryNetworkType(I)V
    .registers 4
    .param p1, "network_type"    # I

    .prologue
    .line 1167
    const-string/jumbo v0, "persist.radio.ddssim.rat"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " setPrimaryNetworkType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1169
    return-void
.end method
