.class public Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
.super Lcom/android/internal/telephony/PhoneSwitcher;
.source "QtiPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;
    }
.end annotation


# static fields
.field private static final OEM_DDS_SETTING_EVENT_CHANGE:I = 0x889900


# instance fields
.field private final EVENT_ALLOW_DATA_FALSE_RESPONSE:I

.field private final EVENT_ALLOW_DATA_TRUE_RESPONSE:I

.field private final MAX_CONNECT_FAILURE_COUNT:I

.field private mAllowDataFailure:[I

.field private mCm:Lcom/android/internal/telephony/CallManager;

.field private mDefaultDataPhoneId:I

.field private mManualDdsSwitch:Z

.field private mNewActivePhones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private final mRetryArray:[I

.field private mSendDdsSwitchDoneIntent:Z

.field private mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSimStates:[Ljava/lang/String;

.field private mWaitForDetachResponse:Z


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)[Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)Z
    .registers 3
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isPhoneIdValidForRetry(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)Z
    .registers 3
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isSimReady(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)I
    .registers 3
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "l"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)V
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resetConnectFailureCount(I)V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
    .registers 15
    .param p1, "maxActivePhones"    # I
    .param p2, "numPhones"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "tr"    # Lcom/android/internal/telephony/ITelephonyRegistry;
    .param p7, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p8, "phones"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 100
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/PhoneSwitcher;-><init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    .line 78
    const/4 v1, 0x5

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->MAX_CONNECT_FAILURE_COUNT:I

    .line 79
    const/4 v1, 0x5

    const/16 v2, 0xa

    const/16 v3, 0x14

    const/16 v4, 0x28

    const/16 v5, 0x3c

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRetryArray:[I

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSendDdsSwitchDoneIntent:Z

    .line 84
    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataPhoneId:I

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    .line 94
    const/16 v1, 0x70

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->EVENT_ALLOW_DATA_FALSE_RESPONSE:I

    .line 95
    const/16 v1, 0x71

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->EVENT_ALLOW_DATA_TRUE_RESPONSE:I

    .line 118
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    new-array v1, p2, [I

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    .line 103
    new-array v1, p2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCm:Lcom/android/internal/telephony/CallManager;

    .line 105
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCm:Lcom/android/internal/telephony/CallManager;

    const/16 v2, 0x6c

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 106
    invoke-static {p3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 107
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 108
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->queryMaxDataAllowed()V

    .line 112
    :goto_57
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/16 v2, 0x6e

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    return-void

    .line 110
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_72
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/16 v2, 0x6f

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_57
.end method

.method private broadcastNetworkSpecifier()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v3, "subIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v0, v4, :cond_32

    .line 243
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 244
    .local v2, "subId":[I
    if-eqz v2, :cond_2f

    array-length v4, v2

    if-lez v4, :cond_2f

    .line 245
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v4

    .line 244
    if-eqz v4, :cond_2f

    .line 246
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isUiccProvisioned(I)Z

    move-result v4

    .line 244
    if-eqz v4, :cond_2f

    .line 247
    aget v4, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 251
    .end local v2    # "subId":[I
    :cond_32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_51

    .line 252
    new-instance v1, Landroid/content/Intent;

    .line 253
    const-string/jumbo v4, "org.codeaurora.intent.action.ACTION_NETWORK_SPECIFIER_SET"

    .line 252
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "SubIdList"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 255
    const-string/jumbo v4, "Broadcast network specifier set intent"

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 256
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 258
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_51
    return-void
.end method

.method private enforceDds(I)V
    .registers 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 473
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v0

    .line 474
    .local v0, "subId":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enforceDds: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 476
    return-void
.end method

.method private getConnectFailureCount(I)I
    .registers 3
    .param p1, "phoneId"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    aget v0, v0, p1

    return v0
.end method

.method private handleConnectMaxFailure(I)V
    .registers 6
    .param p1, "phoneId"    # I

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resetConnectFailureCount(I)V

    .line 463
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 464
    .local v1, "ddsSubId":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 465
    .local v0, "ddsPhoneId":I
    if-lez v0, :cond_31

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v0, v2, :cond_31

    .line 466
    if-eq p1, v0, :cond_31

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ALLOW_DATA retries exhausted on phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 468
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->enforceDds(I)V

    .line 470
    :cond_31
    return-void
.end method

.method private handleUnsolMaxDataAllowedChange(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 143
    if-eqz p1, :cond_6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_d

    .line 144
    :cond_6
    const-string/jumbo v3, "Null data received in handleUnsolMaxDataAllowedChange"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 145
    return-void

    .line 147
    :cond_d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 148
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 150
    .local v2, "rspId":I
    const v3, 0x8041e

    if-ne v2, v3, :cond_62

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 152
    .local v1, "response_size":I
    if-gez v1, :cond_43

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Response size is Invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 154
    return-void

    .line 156
    :cond_43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Unsol Max Data Changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 159
    .end local v1    # "response_size":I
    :cond_62
    return-void
.end method

.method private incConnectFailureCount(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 455
    return-void
.end method

.method private informDdsToRil(I)V
    .registers 7
    .param p1, "ddsSubId"    # I

    .prologue
    .line 550
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 552
    .local v0, "ddsPhoneId":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v2

    .line 553
    .local v2, "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v3

    if-nez v3, :cond_19

    .line 554
    const-string/jumbo v3, "Oem hook service is not ready yet"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 555
    return-void

    .line 558
    :cond_19
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v1, v3, :cond_46

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "InformDdsToRil rild= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DDS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v2, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(II)V

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 562
    :cond_46
    return-void
.end method

.method private isAnyVoiceCallActiveOnDevice()Z
    .registers 4

    .prologue
    .line 479
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCm:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_23

    const/4 v0, 0x1

    .line 480
    .local v0, "ret":Z
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAnyVoiceCallActiveOnDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 481
    return v0

    .line 479
    .end local v0    # "ret":Z
    :cond_23
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_b
.end method

.method private isPhoneIdValidForRetry(I)Z
    .registers 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 540
    const/4 v1, -0x1

    .line 541
    .local v1, "phoneIdForRequest":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1a

    .line 542
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 543
    .local v0, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    .line 544
    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    .line 543
    invoke-virtual {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;I)I

    move-result v1

    .line 546
    .end local v0    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    :cond_1a
    if-ne v1, p1, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    return v2
.end method

.method private isSimReady(I)Z
    .registers 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 261
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 262
    return v2

    .line 265
    :cond_5
    const-string/jumbo v0, "READY"

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 266
    const-string/jumbo v0, "LOADED"

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 265
    if-nez v0, :cond_2c

    .line 267
    const-string/jumbo v0, "IMSI"

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSimStates:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 265
    if-eqz v0, :cond_45

    .line 268
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SIM READY for phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x1

    return v0

    .line 271
    :cond_45
    return v2
.end method

.method private isUiccProvisioned(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .prologue
    .line 405
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v1

    .line 406
    .local v1, "uiccProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2

    if-lez v2, :cond_23

    .line 407
    const/4 v0, 0x1

    .line 408
    .local v0, "status":Z
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUiccProvisioned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 410
    return v0

    .line 407
    .end local v0    # "status":Z
    :cond_23
    const/4 v0, 0x0

    .restart local v0    # "status":Z
    goto :goto_b
.end method

.method private onAllowDataResponse(ILandroid/os/AsyncResult;)V
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 485
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_7b

    .line 486
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->incConnectFailureCount(I)V

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Allow_data failed on phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", failureCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 488
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v4

    .line 487
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 490
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 493
    const-string/jumbo v3, "Wait for call end indication"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 494
    return-void

    .line 497
    :cond_3a
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isSimReady(I)Z

    move-result v3

    if-nez v3, :cond_47

    .line 500
    const-string/jumbo v3, "Wait for SIM to get READY"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 501
    return-void

    .line 504
    :cond_47
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v0

    .line 505
    .local v0, "allowDataFailureCount":I
    const/4 v3, 0x5

    if-le v0, v3, :cond_52

    .line 506
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->handleConnectMaxFailure(I)V

    .line 537
    .end local v0    # "allowDataFailureCount":I
    :goto_51
    return-void

    .line 508
    .restart local v0    # "allowDataFailureCount":I
    :cond_52
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mRetryArray:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    mul-int/lit16 v2, v3, 0x3e8

    .line 509
    .local v2, "retryDelay":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scheduling retry connect/allow_data after: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 510
    new-instance v3, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;

    invoke-direct {v3, p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)V

    .line 520
    int-to-long v4, v2

    .line 510
    invoke-virtual {p0, v3, v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_51

    .line 523
    .end local v0    # "allowDataFailureCount":I
    .end local v2    # "retryDelay":I
    :cond_7b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Allow_data success on phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 524
    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSendDdsSwitchDoneIntent:Z

    if-eqz v3, :cond_bd

    .line 525
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSendDdsSwitchDoneIntent:Z

    .line 526
    new-instance v1, Landroid/content/Intent;

    .line 527
    const-string/jumbo v3, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    .line 526
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "subscription"

    .line 529
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v4

    .line 528
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 530
    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 531
    const-string/jumbo v3, "Broadcast dds switch done intent"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 532
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 534
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_bd
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resetConnectFailureCount(I)V

    .line 535
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_51
.end method

.method private queryMaxDataAllowed()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getMaxDataAllowed()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    .line 140
    return-void
.end method

.method private resetConnectFailureCount(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mAllowDataFailure:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 451
    return-void
.end method


# virtual methods
.method protected activate(I)V
    .registers 8
    .param p1, "phoneId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 432
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v1, p1

    .line 433
    .local v0, "state":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_17

    .line 434
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v1

    if-nez v1, :cond_17

    return-void

    .line 435
    :cond_17
    iput-boolean v5, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "activate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    .line 438
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    .line 439
    const/16 v2, 0x71

    invoke-virtual {p0, v2, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 438
    invoke-interface {v1, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 440
    return-void
.end method

.method protected deactivate(I)V
    .registers 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 415
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v1, p1

    .line 416
    .local v0, "state":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    if-nez v1, :cond_a

    .line 417
    return-void

    .line 419
    :cond_a
    iput-boolean v4, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deactivate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    .line 422
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 423
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    .line 424
    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 423
    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 425
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    .line 427
    :cond_45
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 428
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    .line 163
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 164
    .local v2, "ddsSubId":I
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 166
    .local v1, "ddsPhoneId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handle event - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_f4

    .line 233
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->handleMessage(Landroid/os/Message;)V

    .line 235
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2f
    :goto_2f
    return-void

    .line 171
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_30
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 172
    const-string/jumbo v7, "Voice call active. Waiting for call end"

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 173
    return-void

    .line 175
    :cond_3d
    const-string/jumbo v7, "defaultChanged"

    invoke-virtual {p0, v9, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    goto :goto_2f

    .line 178
    :sswitch_44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 179
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_5a

    .line 180
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 181
    .local v4, "isServiceReady":Z
    if-eqz v4, :cond_2f

    .line 182
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->queryMaxDataAllowed()V

    goto :goto_2f

    .line 185
    .end local v4    # "isServiceReady":Z
    :cond_5a
    const-string/jumbo v7, "Error: empty result, EVENT_OEM_HOOK_SERVICE_READY"

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_2f

    .line 189
    .local v0, "ar":Landroid/os/AsyncResult;
    :sswitch_61
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 190
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_71

    .line 191
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Landroid/os/Message;

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->handleUnsolMaxDataAllowedChange(Landroid/os/Message;)V

    goto :goto_2f

    .line 193
    :cond_71
    const-string/jumbo v7, "Error: empty result, EVENT_UNSOL_MAX_DATA_ALLOWED_CHANGED"

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_2f

    .line 197
    .local v0, "ar":Landroid/os/AsyncResult;
    :sswitch_78
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-direct {p0, v8, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onAllowDataResponse(ILandroid/os/AsyncResult;)V

    goto :goto_2f

    .line 200
    :sswitch_82
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->broadcastNetworkSpecifier()V

    .line 201
    const-string/jumbo v7, "subChanged"

    invoke-virtual {p0, v9, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    goto :goto_2f

    .line 204
    :sswitch_8c
    const-string/jumbo v7, "EVENT_VOICE_CALL_ENDED"

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isAnyVoiceCallActiveOnDevice()Z

    move-result v7

    if-nez v7, :cond_2f

    .line 206
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_99
    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v3, v7, :cond_2f

    .line 207
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->getConnectFailureCount(I)I

    move-result v7

    if-lez v7, :cond_ad

    .line 208
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isPhoneIdValidForRetry(I)Z

    move-result v7

    .line 207
    if-eqz v7, :cond_ad

    .line 209
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->resendDataAllowed(I)V

    goto :goto_2f

    .line 206
    :cond_ad
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 217
    .end local v3    # "i":I
    :sswitch_b0
    const-string/jumbo v7, "OEM_DDS_SETTING_EVENT_CHANGE"

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v7, "oemSetting"

    const/4 v8, 0x1

    invoke-virtual {p0, v8, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    goto/16 :goto_2f

    .line 222
    :sswitch_bf
    const-string/jumbo v7, "EVENT_ALLOW_DATA_FALSE_RESPONSE"

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 223
    iput-boolean v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    .line 224
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->informDdsToRil(I)V

    .line 225
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "phoneId$iterator":Ljava/util/Iterator;
    :goto_d0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 226
    .local v5, "phoneId":I
    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->activate(I)V

    goto :goto_d0

    .line 228
    .end local v5    # "phoneId":I
    :cond_e4
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 229
    iput-boolean v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    goto/16 :goto_2f

    .line 168
    :sswitch_data_f4
    .sparse-switch
        0x65 -> :sswitch_30
        0x66 -> :sswitch_82
        0x6c -> :sswitch_8c
        0x6e -> :sswitch_61
        0x6f -> :sswitch_44
        0x70 -> :sswitch_bf
        0x71 -> :sswitch_78
        0x889900 -> :sswitch_b0
    .end sparse-switch
.end method

.method public oemSendDdsSettingConfig(I)V
    .registers 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x1

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oemSendDdsSettingConfig: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-le v1, v3, :cond_2c

    .line 572
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 573
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    rsub-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iput-boolean v3, v1, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 575
    :cond_2c
    const-string/jumbo v1, "send OEM_DDS_SETTING_EVENT_CHANGE"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 576
    const v1, 0x889900

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 577
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->sendMessage(Landroid/os/Message;)Z

    .line 578
    return-void
.end method

.method protected onEvaluate(ZLjava/lang/String;)V
    .registers 23
    .param p1, "requestsChanged"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 277
    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .local v16, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->isEmergency()Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 279
    const-string/jumbo v18, "onEvalute aborted due to Emergency"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 280
    return-void

    .line 283
    :cond_1a
    move/from16 v7, p1

    .line 284
    .local v7, "diffDetected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    .line 285
    .local v3, "dataSubId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v6

    .line 287
    .local v6, "ddsPhoneId":I
    const-string/jumbo v18, "oemSetting"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 288
    .local v11, "isOemSetting":Z
    if-eqz v11, :cond_58

    .line 289
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    .line 290
    move-object/from16 v0, p0

    iput v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataSubscription:I

    .line 291
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSendDdsSwitchDoneIntent:Z

    .line 292
    move-object/from16 v0, p0

    iput v6, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataPhoneId:I

    .line 293
    const/4 v7, 0x1

    .line 297
    .end local v7    # "diffDetected":Z
    :cond_58
    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataSubscription:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v3, v0, :cond_6c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataPhoneId:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v6, v0, :cond_a6

    .line 298
    :cond_6c
    const-string/jumbo v18, " default "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataSubscription:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    .line 300
    move-object/from16 v0, p0

    iput v3, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataSubscription:I

    .line 301
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSendDdsSwitchDoneIntent:Z

    .line 302
    move-object/from16 v0, p0

    iput v6, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataPhoneId:I

    .line 303
    const/4 v7, 0x1

    .line 305
    :cond_a6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mManualDdsSwitch="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 306
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_c8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_12d

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v17

    .line 308
    .local v17, "sub":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    move-object/from16 v18, v0

    aget v18, v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12a

    .line 309
    const-string/jumbo v18, " phone["

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    move-object/from16 v19, v0

    aget v19, v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const-string/jumbo v18, "->"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    move-object/from16 v18, v0

    aput v17, v18, v8

    .line 312
    const/4 v7, 0x1

    .line 306
    :cond_12a
    add-int/lit8 v8, v8, 0x1

    goto :goto_c8

    .line 316
    .end local v17    # "sub":I
    :cond_12d
    if-eqz v7, :cond_2a6

    .line 317
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "evaluating due to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 319
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v12, "newActivePhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "dcRequest$iterator":Ljava/util/Iterator;
    :cond_15d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1a6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 322
    .local v4, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v0, v4, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    move-object/from16 v18, v0

    .line 323
    iget v0, v4, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    move/from16 v19, v0

    .line 322
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;I)I

    move-result v15

    .line 324
    .local v15, "phoneIdForRequest":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_15d

    .line 325
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_15d

    .line 326
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mMaxActivePhones:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_15d

    .line 331
    .end local v4    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    .end local v15    # "phoneIdForRequest":I
    :cond_1a6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "default subId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataSubscription:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 332
    const/4 v8, 0x0

    :goto_1c8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_20c

    .line 333
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " phone["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] using sub["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    move-object/from16 v19, v0

    aget v19, v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 332
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c8

    .line 335
    :cond_20c
    const-string/jumbo v18, " newActivePhones:"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 336
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$iterator":Ljava/util/Iterator;
    :goto_21a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_244

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .local v9, "i":Ljava/lang/Integer;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    goto :goto_21a

    .line 339
    .end local v9    # "i":Ljava/lang/Integer;
    :cond_244
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    .line 340
    const/4 v13, 0x0

    .local v13, "phoneId":I
    :goto_249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_267

    .line 341
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_264

    .line 342
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->deactivate(I)V

    .line 340
    :cond_264
    add-int/lit8 v13, v13, 0x1

    goto :goto_249

    .line 345
    :cond_267
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mWaitForDetachResponse:Z

    move/from16 v18, v0

    if-nez v18, :cond_2a6

    .line 346
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->informDdsToRil(I)V

    .line 348
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "phoneId$iterator":Ljava/util/Iterator;
    :goto_278
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_28e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 349
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->activate(I)V

    goto :goto_278

    .line 351
    :cond_28e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNewActivePhones:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2a6

    .line 352
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    .line 356
    .end local v5    # "dcRequest$iterator":Ljava/util/Iterator;
    .end local v10    # "i$iterator":Ljava/util/Iterator;
    .end local v12    # "newActivePhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "phoneId":I
    .end local v14    # "phoneId$iterator":Ljava/util/Iterator;
    :cond_2a6
    return-void
.end method

.method protected onResendDataAllowed(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 444
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 445
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 446
    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 445
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 447
    return-void
.end method

.method protected phoneIdForRequest(Landroid/net/NetworkRequest;I)I
    .registers 12
    .param p1, "netRequest"    # Landroid/net/NetworkRequest;
    .param p2, "apnid"    # I

    .prologue
    .line 361
    const/4 v4, 0x0

    .line 363
    .local v4, "specifier":Ljava/lang/String;
    iget-object v6, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v2

    .line 364
    .local v2, "networkSpecifierObj":Landroid/net/NetworkSpecifier;
    if-eqz v2, :cond_11

    instance-of v6, v2, Landroid/net/StringNetworkSpecifier;

    if-eqz v6, :cond_11

    .line 365
    check-cast v2, Landroid/net/StringNetworkSpecifier;

    .end local v2    # "networkSpecifierObj":Landroid/net/NetworkSpecifier;
    iget-object v4, v2, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    .line 368
    .end local v4    # "specifier":Ljava/lang/String;
    :cond_11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 369
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataSubscription:I

    .line 382
    .local v5, "subId":I
    :goto_19
    const/4 v3, -0x1

    .line 383
    .local v3, "phoneId":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_4a

    return v3

    .line 371
    .end local v3    # "phoneId":I
    .end local v5    # "subId":I
    :cond_1e
    const/4 v6, 0x5

    if-ne v6, p2, :cond_28

    iget-boolean v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mManualDdsSwitch:Z

    if-eqz v6, :cond_28

    .line 372
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataSubscription:I

    .restart local v5    # "subId":I
    goto :goto_19

    .line 375
    .end local v5    # "subId":I
    :cond_28
    :try_start_28
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2b} :catch_2d

    move-result v5

    .restart local v5    # "subId":I
    goto :goto_19

    .line 376
    .end local v5    # "subId":I
    :catch_2d
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "PhoneSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NumberFormatException on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v5, -0x1

    .restart local v5    # "subId":I
    goto :goto_19

    .line 385
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "phoneId":I
    :cond_4a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4b
    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mNumPhones:I

    if-ge v1, v6, :cond_7c

    .line 389
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPhoneSubscriptions["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 391
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mPhoneSubscriptions:[I

    aget v6, v6, v1

    if-ne v6, v5, :cond_b7

    .line 392
    move v3, v1

    .line 399
    :cond_7c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",mDefaultDataSubscription="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->mDefaultDataSubscription:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",netRequest = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->log(Ljava/lang/String;)V

    .line 401
    return v3

    .line 385
    :cond_b7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b
.end method
