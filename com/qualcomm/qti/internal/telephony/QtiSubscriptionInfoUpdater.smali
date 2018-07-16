.class public Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
.super Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.source "QtiSubscriptionInfoUpdater.java"


# static fields
.field private static final ACTION_ALL_ICC_QUERY_DONE:Ljava/lang/String; = "org.codeaurora.intent.action.ALL_ICC_QUERY_DONE"

.field private static final CARRIER_MODE_CT_CLASS_A:Ljava/lang/String; = "ct_class_a"

.field private static final EVENT_ADD_SUBINFO_RECORD:I = 0x64

.field private static final EVENT_UPDATE_NV_RECORD:I = 0x65

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final ICCID_STRING_FOR_NV:Ljava/lang/String; = "DUMMY_NV_ID"

.field private static final LOG_TAG:Ljava/lang/String; = "QtiSubscriptionInfoUpdater"

.field private static final ROAMING_SETTINGS_CONFIG:Ljava/lang/String; = "persist.vendor.radio.roamingsettings"

.field private static final mNumPhones:I

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;


# instance fields
.field private isNVSubAvailable:Z

.field private mCarrierMode:Ljava/lang/String;

.field private mIsCTClassA:Z

.field private mIsRecordUpdateRequired:[Z

.field private needEnableRoamingSettings:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 75
    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 77
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    .line 94
    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 9
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 73
    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    .line 74
    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->needEnableRoamingSettings:Z

    .line 81
    const-string/jumbo v1, "persist.radio.carrier_mode"

    const-string/jumbo v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mCarrierMode:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mCarrierMode:Ljava/lang/String;

    const-string/jumbo v2, "ct_class_a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsCTClassA:Z

    .line 93
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    .line 118
    sput-object p2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    .line 119
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_28
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-ge v0, v1, :cond_33

    .line 120
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    aput-boolean v3, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 122
    :cond_33
    return-void
.end method

.method private checkUiccCard(Ljava/lang/String;)V
    .registers 6
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isCtCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 248
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 249
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_3d

    .line 250
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 251
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 252
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v0

    .line 253
    :goto_2f
    if-nez v0, :cond_3d

    .line 254
    const-string/jumbo v2, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v3, "This is a 3G CT card."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendBroadCastToApp()V

    .line 262
    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_3d
    :goto_3d
    return-void

    .line 251
    .restart local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_3e
    const/4 v0, 0x1

    .local v0, "hasUiccApp":Z
    goto :goto_2f

    .line 250
    .end local v0    # "hasUiccApp":Z
    :cond_40
    const/4 v0, 0x0

    .restart local v0    # "hasUiccApp":Z
    goto :goto_2f

    .line 259
    .end local v0    # "hasUiccApp":Z
    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_42
    const-string/jumbo v2, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v3, "This is a non-CT card."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendBroadCastToApp()V

    goto :goto_3d
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    .registers 2

    .prologue
    .line 109
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    if-nez v0, :cond_d

    .line 110
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_d
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    return-object v0
.end method

.method private declared-synchronized handleAddSubInfoRecordEvent(ILjava/lang/String;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 198
    :try_start_1
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_50

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_50

    .line 199
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Record already exists ignore duplicate update, existing IccId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, p1

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string/jumbo v2, " recvd iccId["

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string/jumbo v2, "] = "

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_dc

    monitor-exit p0

    .line 205
    return-void

    .line 208
    :cond_50
    :try_start_50
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_5f

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    if-ne v0, v1, :cond_64

    .line 209
    :cond_5f
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 212
    :cond_64
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 216
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", iccId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    const-string/jumbo v2, " needEnableRoamingSettings = "

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->needEnableRoamingSettings:Z

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d1

    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isCtCard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 220
    const-string/jumbo v0, "persist.vendor.radio.roamingsettings"

    const/4 v1, 0x0

    .line 219
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 221
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->setRoamingSettingsState(Landroid/content/Context;Z)V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->needEnableRoamingSettings:Z

    .line 228
    :cond_bd
    :goto_bd
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsCTClassA:Z

    if-eqz v0, :cond_c6

    if-nez p1, :cond_c6

    .line 229
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->checkUiccCard(Ljava/lang/String;)V

    .line 233
    :cond_c6
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 234
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V
    :try_end_cf
    .catchall {:try_start_50 .. :try_end_cf} :catchall_dc

    :cond_cf
    monitor-exit p0

    .line 236
    return-void

    .line 223
    :cond_d1
    :try_start_d1
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->needEnableRoamingSettings:Z

    if-nez v0, :cond_bd

    .line 224
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->setRoamingSettingsState(Landroid/content/Context;Z)V
    :try_end_db
    .catchall {:try_start_d1 .. :try_end_db} :catchall_dc

    goto :goto_bd

    :catchall_dc
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static init(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    .registers 8
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 98
    const-class v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    monitor-enter v1

    .line 99
    :try_start_3
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    if-nez v0, :cond_12

    .line 100
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;-><init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    .line 104
    :goto_e
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2f

    monitor-exit v1

    return-object v0

    .line 102
    :cond_12
    :try_start_12
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_2f

    goto :goto_e

    .line 98
    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isCtCard(Ljava/lang/String;)Z
    .registers 5
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 265
    const/4 v1, 0x6

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "subIccId":Ljava/lang/String;
    const-string/jumbo v1, "898603"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string/jumbo v1, "898611"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string/jumbo v1, "8985231"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 267
    const-string/jumbo v1, "8985302"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 266
    if-nez v1, :cond_33

    .line 267
    const-string/jumbo v1, "8985307"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 266
    if-eqz v1, :cond_35

    .line 268
    :cond_33
    const/4 v1, 0x1

    return v1

    .line 270
    :cond_35
    return v2
.end method

.method private sendBroadCastToApp()V
    .registers 5

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.qualcomm.qti.networksetting"

    .line 241
    const-string/jumbo v2, "com.qualcomm.qti.networksetting.SimAlertNotification"

    .line 240
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string/jumbo v1, "QtiSubscriptionInfoUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending broadcast to NetworkSetting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method private setRoamingSettingsState(Landroid/content/Context;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "install"    # Z

    .prologue
    .line 274
    if-nez p1, :cond_c

    .line 275
    const-string/jumbo v1, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v2, "setRoamingSettingsState, context null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void

    .line 278
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 279
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_1c

    .line 280
    const-string/jumbo v1, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v2, "setRoamingSettingsState, PackageManager null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 301
    :cond_1c
    return-void
.end method


# virtual methods
.method addSubInfoRecord(ILjava/lang/String;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    .line 181
    if-eqz p2, :cond_8

    if-ltz p1, :cond_8

    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-lt p1, v0, :cond_32

    .line 185
    :cond_8
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addSubInfoRecord, invalid input IccId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 192
    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleAddSubInfoRecordEvent(ILjava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V

    .line 195
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    const-string/jumbo v3, "QtiSubscriptionInfoUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " handleMessage: EVENT:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_58

    .line 147
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V

    .line 150
    :goto_24
    return-void

    .line 129
    :sswitch_25
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleAddSubInfoRecordEvent(ILjava/lang/String;)V

    goto :goto_24

    .line 133
    :sswitch_2f
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleUpdateNVRecord(I)V

    goto :goto_24

    .line 137
    :sswitch_35
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 138
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    .line 139
    .local v2, "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    iget v1, v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    .line 140
    .local v1, "slotId":I
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4e

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string/jumbo v4, ""

    if-ne v3, v4, :cond_53

    .line 141
    :cond_4e
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    .line 143
    :cond_53
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V

    goto :goto_24

    .line 127
    nop

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_35
        0x64 -> :sswitch_25
        0x65 -> :sswitch_2f
    .end sparse-switch
.end method

.method protected handleSimAbsentOrError(ILjava/lang/String;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v0, :cond_5

    .line 314
    return-void

    .line 317
    :cond_5
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_14

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    if-eq v0, v1, :cond_19

    .line 318
    :cond_14
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 321
    :cond_19
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsentOrError(ILjava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSimAbsentforSelectMultiMode(I)V

    .line 325
    return-void
.end method

.method protected handleSimLoaded(I)V
    .registers 4
    .param p1, "slotId"    # I

    .prologue
    .line 305
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_f

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    if-ne v0, v1, :cond_14

    .line 306
    :cond_f
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 308
    :cond_14
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    .line 309
    return-void
.end method

.method public handleUpdateNVRecord(I)V
    .registers 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 159
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v1, :cond_11

    .line 160
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 161
    const-string/jumbo v1, "DUMMY_NV_ID"

    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleAddSubInfoRecordEvent(ILjava/lang/String;)V

    .line 178
    :cond_10
    :goto_10
    return-void

    .line 164
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    .line 165
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v1, p1, v4, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIndexWithCheck(IZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "subInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_10

    .line 167
    const-string/jumbo v2, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateNVRecord, active IccID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 171
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DUMMY_NV_ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 174
    const-string/jumbo v1, "ABSENT"

    invoke-virtual {p0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->handleSimAbsentOrError(ILjava/lang/String;)V

    goto :goto_10
.end method

.method public updateNVRecord(ZI)V
    .registers 6
    .param p1, "isNVReady"    # Z
    .param p2, "slotId"    # I

    .prologue
    .line 153
    const-string/jumbo v0, "QtiSubscriptionInfoUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNVRecord, isNVReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->isNVSubAvailable:Z

    .line 155
    const/16 v0, 0x65

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 156
    return-void
.end method

.method protected declared-synchronized updateSubscriptionInfoByIccId()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, "isUpdateRequired":Z
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_3
    :try_start_3
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-ge v0, v2, :cond_e

    .line 331
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3a

    .line 332
    const/4 v1, 0x1

    .line 337
    :cond_e
    if-eqz v1, :cond_3d

    .line 338
    invoke-super {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 339
    const-string/jumbo v2, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v3, "SIM state changed, Updating user preference "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 344
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 348
    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mNumPhones:I

    if-ge v0, v2, :cond_46

    .line 349
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->mIsRecordUpdateRequired:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 330
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 352
    :cond_3d
    const-string/jumbo v2, "QtiSubscriptionInfoUpdater"

    const-string/jumbo v3, "Ignoring subscription update event"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_48

    :cond_46
    monitor-exit p0

    .line 354
    return-void

    :catchall_48
    move-exception v2

    monitor-exit p0

    throw v2
.end method
