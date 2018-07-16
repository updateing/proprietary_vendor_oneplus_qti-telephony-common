.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
.super Landroid/os/Handler;
.source "QtiPrimaryCardController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$1;,
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;
    }
.end annotation


# static fields
.field private static final ACTION_PRIMARY_CARD_CHANGED_IN_SERVICE:Ljava/lang/String; = "org.codeaurora.intent.action.PRIMARY_CARD_CHANGED_IN_SERVICE"

.field private static final ACTION_SET_PRIMARY_CARD_DONE:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_SET_PRIMARY_CARD_DONE"

.field private static final CARRIER_MODE_CMCC:Ljava/lang/String; = "cmcc"

.field private static final DBG:Z = true

.field private static final EVENT_ALL_CARDS_INFO_AVAILABLE:I = 0x1

.field private static final EVENT_GET_NWMODE_DONE:I = 0x4

.field private static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x8

.field private static final EVENT_PRIMARY_CARD_SET_DONE:I = 0x5

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x7

.field private static final EVENT_SET_NWMODE_DONE:I = 0x3

.field private static final EVENT_SET_PRIMARY_SUB:I = 0x6

.field private static final EVENT_SET_RADIO_CAPABILITY_DONE:I = 0x2

.field private static final FWK_PRIMARY_CARD_REQUEST:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPcController"

.field private static final PRIMARYCARD_SUBSCRIPTION_KEY:Ljava/lang/String; = "primarycard_sub"

.field private static final PRIMARY_CARD_RESULT:Ljava/lang/String; = "result"

.field private static final SETTING_USER_PREF_DATA_SUB:Ljava/lang/String; = "user_preferred_data_sub"

.field private static final USER_PRIMARY_CARD_REQUEST:I = 0x3e9

.field private static final VDBG:Z

.field private static final sCmccIins:[I

.field private static final sCtIins:[I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;


# instance fields
.field private mCardChanged:Z

.field mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

.field private mCarrierMode:Ljava/lang/String;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCmdMessage:Landroid/os/Message;

.field private final mContext:Landroid/content/Context;

.field private mCurrentIccIds:[Ljava/lang/String;

.field private mIsCMCC:Z

.field private mPcTriggeredFlexMapDone:Z

.field mPcUtils:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPrefNwModes:[I

.field private mPrefPrimarySlot:I

.field private mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

.field mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

.field private mPriorityMatch:Z

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryArray:[I

.field private mRetryCount:I

.field private mRetryPrimarySlot:I

.field mSubsidyLockSettingsObserver:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)I
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    .prologue
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    return v0
.end method

.method static synthetic -get1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)I
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    .prologue
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryPrimarySlot:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;Ljava/lang/String;)V
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)V
    .registers 1
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    .prologue
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetSetNwModeFailureCount()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;ZZ)V
    .registers 3
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
    .param p1, "force"    # Z
    .param p2, "isRetryRequest"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 84
    const v0, 0xdb62b

    const v1, 0xdb633

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sCtIins:[I

    .line 85
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sCmccIins:[I

    .line 41
    return-void

    .line 85
    nop

    :array_16
    .array-data 4
        0xdb628
        0xdb62a
        0xdb62f
        0xdb630
        0xdb5d9
        0xdb4a4
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    .line 69
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    .line 70
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    .line 71
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    .line 75
    const/4 v1, 0x2

    const/4 v2, 0x5

    const/16 v3, 0xa

    const/16 v4, 0x14

    const/16 v5, 0x1e

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryArray:[I

    .line 89
    const-string/jumbo v1, "persist.radio.carrier_mode"

    const-string/jumbo v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCarrierMode:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCarrierMode:Ljava/lang/String;

    const-string/jumbo v2, "cmcc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mIsCMCC:Z

    .line 107
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    .line 154
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 132
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 133
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcUtils:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    .line 134
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    .line 135
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    .line 136
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->registerAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    .line 138
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCurrentIccIds:[Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetPrimaryCardParams()V

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    .line 143
    const-string/jumbo v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    .line 142
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 145
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mSubsidyLockSettingsObserver:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    .line 146
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mSubsidyLockSettingsObserver:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->observe(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;)V

    .line 148
    :cond_92
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 151
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/16 v2, 0x8

    invoke-virtual {v1, p0, v2, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
    .registers 3

    .prologue
    .line 119
    const-class v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    monitor-enter v1

    .line 120
    :try_start_3
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    if-nez v0, :cond_13

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "QtiPrimaryCardController was not initialized!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 119
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0

    .line 123
    :cond_13
    :try_start_13
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_10

    monitor-exit v1

    return-object v0
.end method

.method private handleGetNwModeDone(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 271
    const/4 v2, -0x1

    .line 272
    .local v2, "modemNwMode":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 273
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 274
    .local v1, "index":I
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1b

    .line 275
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 276
    invoke-direct {p0, v2, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->saveNwModesToDB(II)V

    .line 278
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got nwMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", saved to DB, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private handleOnSetPrimaryCardDone(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    .line 367
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 368
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 369
    .local v3, "index":I
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_e7

    .line 371
    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->savePrimarySlotToDB(I)V

    .line 372
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->broadcastPrimarySlotServiceChanged(I)V

    .line 374
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getUserSelectionMode()I

    move-result v7

    .line 375
    .local v7, "userSelectionMode":I
    const/4 v1, 0x0

    .line 377
    .local v1, "enableUserSelection":Z
    const/4 v5, 0x0

    .line 378
    .local v5, "numCmccCards":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    sget v8, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v2, v8, :cond_39

    .line 379
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v8, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sCmccIins:[I

    invoke-direct {p0, v8, v9}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->isCardMatchesIins(Ljava/lang/String;[I)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 380
    add-int/lit8 v5, v5, 0x1

    .line 378
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 388
    :cond_39
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userSelectionMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mPriorityMatch"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 389
    const-string/jumbo v9, ", numCmccCards = "

    .line 388
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 390
    const/4 v8, 0x3

    if-eq v7, v8, :cond_72

    .line 391
    const/4 v8, 0x2

    if-ne v7, v8, :cond_73

    .line 392
    iget-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    .line 390
    if-eqz v8, :cond_73

    .line 393
    :cond_72
    const/4 v1, 0x1

    .line 396
    :cond_73
    iget-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mIsCMCC:Z

    if-eqz v8, :cond_c4

    .line 397
    if-nez v5, :cond_7a

    const/4 v1, 0x1

    .line 398
    :cond_7a
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->saveEnableUserSelectioninDB(Z)V

    .line 399
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleOnSetPrimaryCardDone: enableUserSelection ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 400
    const-string/jumbo v9, ", mCardChanged:"

    .line 399
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 400
    iget-boolean v9, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    .line 399
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 400
    const-string/jumbo v9, ", numCardsValid:"

    .line 399
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 400
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->numCardsValid()I

    move-result v9

    .line 399
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 402
    if-eqz v1, :cond_c3

    iget-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    if-eqz v8, :cond_c3

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->numCardsValid()I

    move-result v8

    if-le v8, v10, :cond_c3

    iget-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    if-eqz v8, :cond_c3

    .line 403
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->startLTEConifgActivity()V

    .line 406
    :cond_c3
    return-void

    .line 409
    :cond_c4
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->saveEnableUserSelectioninDB(Z)V

    .line 410
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v6

    .line 412
    .local v6, "subsidyLockFeatureEnabled":Z
    const/4 v4, 0x1

    .line 413
    .local v4, "isPermanentlyUnlocked":Z
    if-eqz v6, :cond_d6

    .line 415
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mSubsidyLockSettingsObserver:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isPermanentlyUnlocked(Landroid/content/Context;)Z

    move-result v4

    .line 418
    .end local v4    # "isPermanentlyUnlocked":Z
    :cond_d6
    if-eqz v1, :cond_e7

    iget-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    if-eqz v8, :cond_e7

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->numCardsValid()I

    move-result v8

    if-le v8, v10, :cond_e7

    if-eqz v4, :cond_e7

    .line 420
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->startLTEConifgActivity()V

    .line 423
    .end local v1    # "enableUserSelection":Z
    .end local v2    # "i":I
    .end local v5    # "numCmccCards":I
    .end local v6    # "subsidyLockFeatureEnabled":Z
    .end local v7    # "userSelectionMode":I
    :cond_e7
    return-void
.end method

.method private handleServiceStateChanged(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 342
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 344
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_24

    .line 346
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getCurrentPrimarySlotFromDB(Landroid/content/Context;)I

    move-result v1

    .line 347
    .local v1, "currentPrimarySlot":I
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 349
    .local v2, "slotId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 350
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 354
    :goto_21
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->broadcastPrimarySlotServiceChanged(I)V

    .line 356
    .end local v1    # "currentPrimarySlot":I
    .end local v2    # "slotId":I
    :cond_24
    return-void

    .line 352
    .restart local v1    # "currentPrimarySlot":I
    .restart local v2    # "slotId":I
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Error, Invalid slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    goto :goto_21
.end method

.method private handleSetNwModeDone(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 218
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 219
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 220
    .local v3, "index":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 221
    .local v4, "requestType":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " done, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 222
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_b5

    .line 223
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryArray:[I

    array-length v6, v6

    if-gt v5, v6, :cond_95

    .line 224
    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_95

    .line 225
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryArray:[I

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    mul-int/lit16 v1, v5, 0x3e8

    .line 226
    .local v1, "delay":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Scheduling retry for failed set primary card request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 227
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryPrimarySlot:I

    .line 228
    new-instance v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$2;

    invoke-direct {v5, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$2;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)V

    .line 238
    int-to-long v6, v1

    .line 228
    invoke-virtual {p0, v5, v6, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    .end local v1    # "delay":I
    :goto_94
    return-void

    .line 240
    :cond_95
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetSetNwModeFailureCount()V

    .line 241
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_99
    sget v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v2, v5, :cond_b0

    .line 242
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v2

    .line 243
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {p0, v7, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 242
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    .line 245
    :cond_b0
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendSetPrimaryCardResult(I)V

    goto :goto_94

    .line 249
    .end local v2    # "i":I
    :cond_b5
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    if-lez v5, :cond_bc

    .line 250
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetSetNwModeFailureCount()V

    .line 254
    :cond_bc
    iget-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    if-nez v5, :cond_c4

    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    if-ne v3, v5, :cond_cb

    .line 256
    :cond_c4
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setDdsOnPrimaryCardIfRequired()V

    .line 257
    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendSetPrimaryCardResult(I)V

    .line 264
    :goto_ca
    return-void

    .line 259
    :cond_cb
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set NwMode["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 260
    const-string/jumbo v6, "] on Primarycard:"

    .line 259
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 260
    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    .line 259
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 261
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    aget v6, v6, v7

    .line 262
    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    const/4 v8, 0x3

    invoke-virtual {p0, v8, v7, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 261
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_ca
.end method

.method private handleSetRadioCapsDone()V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_FLEXMAP_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v0, v1, :cond_15

    .line 206
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    .line 207
    const-string/jumbo v0, "Flex mapping completed, try setting primary card now"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(Z)V

    .line 215
    :cond_14
    :goto_14
    return-void

    .line 209
    :cond_15
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-eq v0, v1, :cond_21

    .line 210
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_PC_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v0, v1, :cond_14

    .line 212
    :cond_21
    const-string/jumbo v0, "Primary card trigerred Flex Mapping completed."

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    goto :goto_14
.end method

.method private haveCMCCSimCard()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->numCardsValid()I

    move-result v3

    if-ge v0, v3, :cond_68

    .line 435
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v3, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "iccId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 437
    const/4 v3, 0x6

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "subIccId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iccId is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 439
    const-string/jumbo v3, "898600"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    const-string/jumbo v3, "898602"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    const-string/jumbo v3, "898607"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 440
    const-string/jumbo v3, "898608"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 439
    if-eqz v3, :cond_65

    .line 441
    :cond_63
    const/4 v3, 0x1

    return v3

    .line 434
    .end local v2    # "subIccId":Ljava/lang/String;
    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 446
    .end local v1    # "iccId":Ljava/lang/String;
    :cond_68
    return v5
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 111
    const-class v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    monitor-enter v1

    .line 112
    :try_start_3
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    if-nez v0, :cond_14

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimaryCardFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 113
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    invoke-direct {v0, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit v1

    .line 116
    return-void

    .line 111
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isCardMatchesIins(Ljava/lang/String;[I)Z
    .registers 8
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "iins"    # [I

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 503
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_b

    .line 504
    :cond_a
    return v3

    .line 506
    :cond_b
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 507
    .local v0, "cardIin":I
    array-length v4, p2

    move v2, v3

    :goto_15
    if-ge v2, v4, :cond_20

    aget v1, p2, v2

    .line 508
    .local v1, "iin":I
    if-ne v1, v0, :cond_1d

    const/4 v2, 0x1

    return v2

    .line 507
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 510
    .end local v1    # "iin":I
    :cond_20
    return v3
.end method

.method private isCardsInfoChanged()Z
    .registers 4

    .prologue
    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "cardChanged":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v2, :cond_10

    .line 691
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->isCardsInfoChanged(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 692
    const/4 v0, 0x1

    .line 690
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 695
    :cond_10
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 717
    const-string/jumbo v0, "QtiPcController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 725
    const-string/jumbo v0, "QtiPcController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 721
    const-string/jumbo v0, "QtiPcController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return-void
.end method

.method private notifySetPrimaryCardDone(Z)V
    .registers 5
    .param p1, "isPass"    # Z

    .prologue
    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySetPrimaryCardDone: Set Primary Card SUCCESS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.codeaurora.intent.action.ACTION_SET_PRIMARY_CARD_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "result"

    if-eqz p1, :cond_36

    const/4 v1, 0x1

    :goto_25
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    const-string/jumbo v1, "phone"

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 363
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 364
    return-void

    .line 361
    :cond_36
    const/4 v1, 0x0

    goto :goto_25
.end method

.method private numCardsValid()I
    .registers 4

    .prologue
    .line 468
    const/4 v1, 0x0

    .line 469
    .local v1, "numCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v2, :cond_17

    .line 470
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v2, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    add-int/lit8 v1, v1, 0x1

    .line 469
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 472
    :cond_17
    return v1
.end method

.method private resetPrimaryCardParams()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 514
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    .line 515
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    .line 516
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    .line 517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v1, :cond_18

    .line 518
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwMode()I

    move-result v2

    aput v2, v1, v0

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 520
    :cond_18
    return-void
.end method

.method private resetSetNwModeFailureCount()V
    .registers 2

    .prologue
    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mRetryCount:I

    .line 268
    return-void
.end method

.method private saveCardIccIdInfoInSp()V
    .registers 6

    .prologue
    .line 707
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v2, :cond_5a

    .line 708
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCurrentIccIds:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 710
    .local v1, "iccId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save IccId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", on slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", in SP."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 711
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "primarycard_sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 711
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 714
    .end local v1    # "iccId":Ljava/lang/String;
    :cond_5a
    return-void
.end method

.method private saveNwModesToDB(II)V
    .registers 8
    .param p1, "nwMode"    # I
    .param p2, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 671
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v0

    .line 672
    .local v0, "subId":[I
    if-eqz v0, :cond_72

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveNwModesToDB: subId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 674
    const-string/jumbo v2, ", new Nw mode = "

    .line 673
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 675
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 676
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 676
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 683
    :cond_65
    :goto_65
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 684
    const-string/jumbo v2, "preferred_network_mode"

    .line 683
    invoke-static {v1, v2, p2, p1}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 686
    return-void

    .line 681
    :cond_72
    const-string/jumbo v1, "saveNwModesToDB: subId is null, do not save nwMode in subId based DB"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->loge(Ljava/lang/String;)V

    goto :goto_65
.end method

.method private sendSetPrimaryCardResult(I)V
    .registers 6
    .param p1, "responseCode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 292
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    if-eqz v1, :cond_16

    .line 293
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    invoke-static {v1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 295
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 296
    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_16
    if-nez p1, :cond_3d

    .line 300
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->saveCardIccIdInfoInSp()V

    .line 301
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->notifySetPrimaryCardDone(Z)V

    .line 302
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->savePrimarySlotToDB(I)V

    .line 303
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->broadcastPrimarySlotServiceChanged(I)V

    .line 308
    :goto_29
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_PC_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v1, v2, :cond_41

    .line 309
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    .line 310
    const-string/jumbo v1, "Primary Card request completed, check for pending reqeusts"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(Z)V

    .line 315
    :cond_3c
    :goto_3c
    return-void

    .line 305
    :cond_3d
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->notifySetPrimaryCardDone(Z)V

    goto :goto_29

    .line 312
    :cond_41
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v1, v2, :cond_3c

    .line 313
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    goto :goto_3c
.end method

.method private setDdsOnPrimaryCardIfRequired()V
    .registers 5

    .prologue
    .line 282
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 284
    .local v0, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 285
    .local v1, "subId":I
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 286
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 287
    const-string/jumbo v3, "user_preferred_data_sub"

    .line 286
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cofigure DDS on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method private setPrimaryCardIfRequired(Z)V
    .registers 3
    .param p1, "force"    # Z

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(ZZ)V

    .line 528
    return-void
.end method

.method private setPrimaryCardIfRequired(ZZ)V
    .registers 10
    .param p1, "force"    # Z
    .param p2, "isRetryRequest"    # Z

    .prologue
    const/4 v5, 0x1

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPrimaryCardIfRequired: force: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 535
    const/4 v3, -0x1

    .line 537
    .local v3, "slotId":I
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-eq v4, v6, :cond_25

    .line 538
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_PC_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v4, v6, :cond_34

    .line 539
    :cond_25
    xor-int/lit8 v4, p2, 0x1

    .line 537
    if-eqz v4, :cond_34

    .line 544
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_PC_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    .line 545
    const-string/jumbo v4, "Primary Card setting in progress. WAIT!"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 546
    return-void

    .line 547
    :cond_34
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v4

    if-nez v4, :cond_44

    .line 548
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_FLEXMAP_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-ne v4, v6, :cond_4f

    .line 551
    :cond_44
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->PENDING_DUE_TO_FLEXMAP_IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    .line 552
    const-string/jumbo v4, "Flex Map in progress. WAIT!"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 553
    return-void

    .line 554
    :cond_4f
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAnyProvisionRequestInProgress()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 557
    const-string/jumbo v4, "Manual provisioning in progress. EXIT!"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 558
    return-void

    .line 561
    :cond_60
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->isCardsInfoChanged()Z

    move-result v0

    .line 563
    .local v0, "isCardChanged":Z
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v4

    if-nez v4, :cond_cf

    move v2, p1

    .line 564
    :goto_6b
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    if-nez v2, :cond_d1

    move v4, v0

    :goto_70
    invoke-virtual {v6, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->loadCurrentPriorityConfigs(Z)V

    .line 567
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getPrefPrimarySlot()I

    move-result v4

    iput v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPrefPrimarySlot: setPrimaryCardIfRequired: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->loge(Ljava/lang/String;)V

    .line 571
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getLpluslSupportStatus()Z

    move-result v4

    if-eqz v4, :cond_d3

    const/4 v1, 0x0

    .line 573
    .local v1, "isSetable":Z
    :goto_9d
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->savePrimarySetable(Z)V

    .line 575
    if-nez v0, :cond_dc

    xor-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_dc

    xor-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_dc

    .line 576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "primary card "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getCurrentPrimarySlotFromDB(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 577
    const-string/jumbo v5, " ,Cards not changed, IGNORE!!"

    .line 576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 578
    return-void

    .line 563
    .end local v1    # "isSetable":Z
    :cond_cf
    const/4 v2, 0x1

    .local v2, "override":Z
    goto :goto_6b

    .end local v2    # "override":Z
    :cond_d1
    move v4, v5

    .line 564
    goto :goto_70

    .line 572
    :cond_d3
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_da

    const/4 v1, 0x1

    .restart local v1    # "isSetable":Z
    goto :goto_9d

    .end local v1    # "isSetable":Z
    :cond_da
    const/4 v1, 0x0

    .restart local v1    # "isSetable":Z
    goto :goto_9d

    .line 580
    :cond_dc
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardChanged:Z

    .line 582
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetPrimaryCardParams()V

    .line 585
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->updateDdsPreferenceInDb()V

    .line 587
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    const/4 v6, -0x2

    if-ne v4, v6, :cond_102

    .line 588
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultPrimarySlot()I

    move-result v4

    iput v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    .line 589
    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    .line 601
    :cond_f1
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    .line 602
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {p0, v6, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 601
    invoke-direct {p0, v4, v5, p2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardOnSlot(ILandroid/os/Message;Z)V

    .line 604
    return-void

    .line 590
    :cond_102
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    if-gez v4, :cond_f1

    .line 591
    const-string/jumbo v4, "Both slots do not have cards with priority config defined. EXIT!"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 594
    if-eqz p2, :cond_115

    .line 595
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendSetPrimaryCardResult(I)V

    .line 596
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->resetSetNwModeFailureCount()V

    .line 598
    :cond_115
    return-void
.end method

.method private declared-synchronized setPrimaryCardOnSlot(ILandroid/os/Message;)V
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    monitor-enter p0

    .line 618
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardOnSlot(ILandroid/os/Message;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    .line 619
    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setPrimaryCardOnSlot(ILandroid/os/Message;Z)V
    .registers 12
    .param p1, "primarySlotId"    # I
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "isRetryRequest"    # Z

    .prologue
    monitor-enter p0

    .line 623
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    .line 624
    .local v3, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 626
    .local v4, "subId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPrimaryCardOnSlot: for slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Start."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 628
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IDLE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    if-eq v5, v6, :cond_31

    xor-int/lit8 v5, p3, 0x1

    if-nez v5, :cond_4b

    .line 629
    :cond_31
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->isConfigLoadDone()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 628
    if-nez v5, :cond_4b

    .line 630
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 628
    if-nez v5, :cond_4b

    .line 630
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 628
    if-eqz v5, :cond_7c

    .line 631
    :cond_4b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Primary Card State is not IDLE, mPrimaryCardState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 632
    const-string/jumbo v6, " subId: "

    .line 631
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 632
    const-string/jumbo v6, ", or configs not yet loaded EXIT!"

    .line 631
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->loge(Ljava/lang/String;)V

    .line 633
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendSetPrimaryCardResult(I)V
    :try_end_7a
    .catchall {:try_start_1 .. :try_end_7a} :catchall_101

    monitor-exit p0

    .line 634
    return-void

    .line 639
    :cond_7c
    if-nez p2, :cond_94

    .line 640
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7f
    :try_start_7f
    sget v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v5, :cond_94

    .line 641
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCurrentIccIds:[Ljava/lang/String;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v6, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 640
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 645
    .end local v0    # "i":I
    :cond_94
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;->IN_PROGRESS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrimaryCardState:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$PrimaryCardState;

    .line 648
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v5, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getNwModesFromConfig(I)[I

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    .line 649
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefPrimarySlot:I

    .line 650
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    .line 651
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCmdMessage:Landroid/os/Message;

    if-eqz v5, :cond_bc

    const/16 v2, 0x3e8

    .line 652
    .local v2, "isFwkRequest":I
    :goto_aa
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPcTriggeredFlexMapDone:Z

    .line 655
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_ae
    sget v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v5, :cond_bf

    .line 656
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    aget v5, v5, v0

    invoke-direct {p0, v5, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->saveNwModesToDB(II)V

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_ae

    .line 651
    .end local v0    # "i":I
    .end local v2    # "isFwkRequest":I
    :cond_bc
    const/16 v2, 0x3e9

    .restart local v2    # "isFwkRequest":I
    goto :goto_aa

    .line 661
    .restart local v0    # "i":I
    :cond_bf
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_c0
    sget v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v5, :cond_ff

    .line 662
    if-eq v1, p1, :cond_fc

    .line 663
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set NwMode["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]  on Secondary card:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 664
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPrefNwModes:[I

    aget v6, v6, v1

    .line 665
    const/4 v7, 0x3

    invoke-virtual {p0, v7, v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 664
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V
    :try_end_fc
    .catchall {:try_start_7f .. :try_end_fc} :catchall_101

    .line 661
    :cond_fc
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    :cond_ff
    monitor-exit p0

    .line 668
    return-void

    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "isFwkRequest":I
    .end local v3    # "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    .end local v4    # "subId":I
    :catchall_101
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private startLTEConifgActivity()V
    .registers 3

    .prologue
    .line 426
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "codeaurora.intent.action.ACTION_LTE_CONFIGURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 430
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 431
    return-void
.end method

.method private updateDdsPreferenceInDb()V
    .registers 6

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "disableDds":Z
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimaryCardFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 478
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimary7Plus5Enabled()Z

    move-result v3

    .line 477
    if-eqz v3, :cond_4e

    .line 479
    const/4 v2, 0x0

    .line 480
    .local v2, "numCmccCards":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v3, :cond_2a

    .line 481
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v3, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sCmccIins:[I

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->isCardMatchesIins(Ljava/lang/String;[I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 482
    add-int/lit8 v2, v2, 0x1

    .line 480
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 486
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "numCmccCards: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 488
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4e

    .line 489
    const-string/jumbo v3, "updateDdsPreferenceInDb: Disable DDS in UI."

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logi(Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x1

    .line 494
    .end local v1    # "i":I
    .end local v2    # "numCmccCards":I
    :cond_4e
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->disableDds()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 495
    const/4 v0, 0x1

    .line 498
    :cond_55
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->saveDisableDdsPreferenceInDB(Z)V

    .line 499
    return-void
.end method


# virtual methods
.method broadcastPrimarySlotServiceChanged(I)V
    .registers 7
    .param p1, "slotId"    # I

    .prologue
    .line 318
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Error!!! Invalid slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 320
    return-void

    .line 323
    :cond_1e
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 325
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 326
    .local v1, "ss":Landroid/telephony/ServiceState;
    if-eqz v1, :cond_6e

    .line 327
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_43

    .line 328
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_6e

    .line 329
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    const/16 v3, 0x12

    if-eq v2, v3, :cond_6e

    .line 330
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " broadcastPrimarySlotServiceChanged, slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 332
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "org.codeaurora.intent.action.PRIMARY_CARD_CHANGED_IN_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_6d
    return-void

    .line 336
    :cond_6e
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    .line 337
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x7

    .line 336
    invoke-virtual {v2, p0, v4, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_6d
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    .line 200
    :goto_5
    return-void

    .line 169
    :pswitch_6
    const-string/jumbo v0, "on EVENT_ALL_CARDS_INFO_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(Z)V

    goto :goto_5

    .line 173
    :pswitch_11
    const-string/jumbo v0, "on EVENT_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleSetRadioCapsDone()V

    goto :goto_5

    .line 177
    :pswitch_1b
    const-string/jumbo v0, "on EVENT_SET_NWMODE_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleSetNwModeDone(Landroid/os/Message;)V

    goto :goto_5

    .line 181
    :pswitch_25
    const-string/jumbo v0, "on EVENT_GET_NWMODE_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleGetNwModeDone(Landroid/os/Message;)V

    goto :goto_5

    .line 185
    :pswitch_2f
    const-string/jumbo v0, "on EVENT_PRIMARY_CARD_SET_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleOnSetPrimaryCardDone(Landroid/os/Message;)V

    goto :goto_5

    .line 189
    :pswitch_39
    const-string/jumbo v0, "on EVENT_OEM_HOOK_SERVICE_READY"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->reloadPriorityConfig()V

    goto :goto_5

    .line 193
    :pswitch_45
    const-string/jumbo v0, "on EVENT_SET_PRIMARY_SUB "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardIfRequired(Z)V

    .line 196
    :pswitch_4f
    const-string/jumbo v0, "on EVENT_SERVICE_STATE_CHANGED "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleServiceStateChanged(Landroid/os/Message;)V

    goto :goto_5

    .line 167
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_11
        :pswitch_1b
        :pswitch_25
        :pswitch_2f
        :pswitch_45
        :pswitch_4f
        :pswitch_39
    .end packed-switch
.end method

.method protected isCardsInfoChanged(I)Z
    .registers 7
    .param p1, "phoneId"    # I

    .prologue
    .line 699
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCardInfoMgr:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mCurrentIccIds:[Ljava/lang/String;

    aput-object v0, v2, p1

    .line 700
    .local v0, "iccId":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "primarycard_sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 700
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "iccIdInSP":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " icc id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", icc id in sp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 703
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public saveUserSelectionMode()V
    .registers 5

    .prologue
    .line 450
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getUserSelectionMode()I

    move-result v1

    .line 451
    .local v1, "userSelectionMode":I
    const/4 v0, 0x0

    .line 457
    .local v0, "enableUserSelection":Z
    const/4 v2, 0x3

    if-eq v1, v2, :cond_f

    .line 458
    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    .line 459
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->mPriorityMatch:Z

    .line 457
    if-eqz v2, :cond_10

    .line 460
    :cond_f
    const/4 v0, 0x1

    .line 462
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveUserSelectionMode: enableUserSelection ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->logd(Ljava/lang/String;)V

    .line 464
    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->saveEnableUserSelectioninDB(Z)V

    .line 465
    return-void
.end method

.method public setPrimaryCardOnSlot(I)V
    .registers 4
    .param p1, "slotId"    # I

    .prologue
    .line 608
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isRadioInValidState()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPrimaryCardOnSlot["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]: Radio is in Invalid State, EXIT!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->loge(Ljava/lang/String;)V

    .line 610
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendSetPrimaryCardResult(I)V

    .line 611
    return-void

    .line 614
    :cond_2d
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardOnSlot(ILandroid/os/Message;)V

    .line 615
    return-void
.end method

.method public trySetPrimarySub()V
    .registers 2

    .prologue
    .line 523
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->sendMessage(Landroid/os/Message;)Z

    .line 524
    return-void
.end method
