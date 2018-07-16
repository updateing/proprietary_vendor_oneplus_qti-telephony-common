.class public Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
.super Lorg/codeaurora/internal/IExtTelephony$Stub;
.source "ExtTelephonyServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;,
        Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;
    }
.end annotation


# static fields
.field private static final CMD_OP_REQUEST_IS_SOFTSIM:I = 0x6e

.field private static final CONFIG_CURRENT_PRIMARY_SUB:Ljava/lang/String; = "config_current_primary_sub"

.field private static final DBG:Z = true

.field private static final ICCID_INDEX:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ExtTelephonyServiceImpl"

.field public static final METHOD_NAME_IS_SOFTSIM:Ljava/lang/String; = "isSoftSIM"

.field private static final SOFTSIM_URL:Landroid/net/Uri;

.field private static final TELEPHONY_SERVICE_NAME:Ljava/lang/String; = "extphone"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;


# instance fields
.field private mDsda:Lorg/codeaurora/internal/IDsda;

.field private mMainThreadHandler:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;

.field private mQtiSmscHelper:Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;

.field methodMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 680
    const-string/jumbo v0, "content://com.redteamobile.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->SOFTSIM_URL:Landroid/net/Uri;

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lorg/codeaurora/internal/IExtTelephony$Stub;-><init>()V

    .line 176
    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDsda:Lorg/codeaurora/internal/IDsda;

    .line 613
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->methodMap:Ljava/util/HashMap;

    .line 89
    const-string/jumbo v0, "init constructor "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_22

    .line 92
    const-string/jumbo v0, "extphone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 94
    :cond_22
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;

    invoke-direct {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQtiSmscHelper:Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;

    .line 97
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mMainThreadHandler:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;

    .line 98
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->initMethodMap()V

    .line 100
    return-void
.end method

.method private enforceReadPhonePermission()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 669
    :try_start_1
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_a} :catch_b

    .line 673
    :goto_a
    return-void

    .line 670
    :catch_b
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .registers 2

    .prologue
    .line 82
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-nez v0, :cond_d

    .line 83
    const-string/jumbo v0, "ExtTelephonyServiceImpl"

    const-string/jumbo v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_d
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    return-object v0
.end method

.method private getPhoneIdbyBundleInfo(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 654
    const/4 v0, -0x1

    .line 655
    .local v0, "phoneId":I
    if-eqz p1, :cond_11

    .line 656
    const-string/jumbo v2, "subscription"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 657
    .local v1, "subId":I
    if-eq v1, v3, :cond_18

    .line 658
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 664
    .end local v1    # "subId":I
    :cond_11
    :goto_11
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .end local v0    # "phoneId":I
    :goto_17
    return v0

    .line 660
    .restart local v0    # "phoneId":I
    .restart local v1    # "subId":I
    :cond_18
    const-string/jumbo v2, "phone"

    const v3, 0x7fffffff

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_11

    .line 664
    .end local v1    # "subId":I
    :cond_23
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    goto :goto_17
.end method

.method public static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-class v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    monitor-enter v1

    .line 71
    :try_start_3
    sput-object p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    .line 72
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    if-nez v0, :cond_14

    .line 73
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 77
    :goto_10
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_31

    monitor-exit v1

    return-object v0

    .line 75
    :cond_14
    :try_start_14
    const-string/jumbo v0, "ExtTelephonyServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sInstance:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_14 .. :try_end_30} :catchall_31

    goto :goto_10

    .line 70
    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initMethodMap()V
    .registers 4

    .prologue
    .line 615
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->methodMap:Ljava/util/HashMap;

    const-string/jumbo v1, "isSoftSIM"

    const/16 v2, 0x6e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    return-void
.end method

.method private isPrimaryCarrierMccMnc(Ljava/lang/String;)Z
    .registers 9
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 465
    const/16 v2, 0x18

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "405840"

    aput-object v2, v0, v3

    const-string/jumbo v2, "405854"

    aput-object v2, v0, v6

    const-string/jumbo v2, "405855"

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string/jumbo v2, "405856"

    const/4 v4, 0x3

    aput-object v2, v0, v4

    const-string/jumbo v2, "405857"

    const/4 v4, 0x4

    aput-object v2, v0, v4

    const-string/jumbo v2, "405858"

    const/4 v4, 0x5

    aput-object v2, v0, v4

    .line 466
    const-string/jumbo v2, "405859"

    const/4 v4, 0x6

    aput-object v2, v0, v4

    const-string/jumbo v2, "405860"

    const/4 v4, 0x7

    aput-object v2, v0, v4

    const-string/jumbo v2, "405861"

    const/16 v4, 0x8

    aput-object v2, v0, v4

    const-string/jumbo v2, "405862"

    const/16 v4, 0x9

    aput-object v2, v0, v4

    const-string/jumbo v2, "405863"

    const/16 v4, 0xa

    aput-object v2, v0, v4

    const-string/jumbo v2, "405864"

    const/16 v4, 0xb

    aput-object v2, v0, v4

    const-string/jumbo v2, "405865"

    const/16 v4, 0xc

    aput-object v2, v0, v4

    .line 467
    const-string/jumbo v2, "405866"

    const/16 v4, 0xd

    aput-object v2, v0, v4

    const-string/jumbo v2, "405867"

    const/16 v4, 0xe

    aput-object v2, v0, v4

    const-string/jumbo v2, "405868"

    const/16 v4, 0xf

    aput-object v2, v0, v4

    const-string/jumbo v2, "405869"

    const/16 v4, 0x10

    aput-object v2, v0, v4

    const-string/jumbo v2, "405870"

    const/16 v4, 0x11

    aput-object v2, v0, v4

    const-string/jumbo v2, "405871"

    const/16 v4, 0x12

    aput-object v2, v0, v4

    const-string/jumbo v2, "405872"

    const/16 v4, 0x13

    aput-object v2, v0, v4

    .line 468
    const-string/jumbo v2, "405873"

    const/16 v4, 0x14

    aput-object v2, v0, v4

    const-string/jumbo v2, "405874"

    const/16 v4, 0x15

    aput-object v2, v0, v4

    const-string/jumbo v2, "22201"

    const/16 v4, 0x16

    aput-object v2, v0, v4

    const-string/jumbo v2, "2221"

    const/16 v4, 0x17

    aput-object v2, v0, v4

    .line 470
    .local v0, "mccMncList":[Ljava/lang/String;
    array-length v4, v0

    move v2, v3

    :goto_a6
    if-ge v2, v4, :cond_cb

    aget-object v1, v0, v2

    .line 471
    .local v1, "mccmnc":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found a matching combination  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 473
    return v6

    .line 470
    :cond_c8
    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    .line 476
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_cb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not found a matching combination  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 477
    return v3
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 529
    const-string/jumbo v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 533
    const-string/jumbo v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 592
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mMainThreadHandler:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_15

    .line 593
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "This method will dealock if called from the main thread"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 596
    :cond_15
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;

    invoke-direct {v2, p2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 597
    .local v2, "request":Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mMainThreadHandler:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 598
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 601
    monitor-enter v2

    .line 602
    :goto_24
    :try_start_24
    iget-object v3, v2, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_32

    if-nez v3, :cond_2e

    .line 604
    :try_start_28
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;->wait()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_32

    goto :goto_24

    .line 605
    :catch_2c
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_24

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2e
    monitor-exit v2

    .line 610
    iget-object v3, v2, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v3

    .line 601
    :catchall_32
    move-exception v3

    monitor-exit v2

    throw v3
.end method


# virtual methods
.method public activateUiccCard(I)I
    .registers 3
    .param p1, "slotId"    # I

    .prologue
    .line 116
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->activateUiccCard(I)I

    move-result v0

    return v0
.end method

.method public akaEndEapSession(III)Z
    .registers 7
    .param p1, "slot"    # I
    .param p2, "eap_method"    # I
    .param p3, "eap_sim_aka_algo"    # I

    .prologue
    .line 373
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 374
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "akaEndEapSession : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " eap_method : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " eap_sim_aka_algo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 375
    if-eqz v0, :cond_3a

    .line 376
    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->akaEndEapSession(II)Z

    move-result v1

    return v1

    .line 378
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_3a
    const/4 v1, 0x0

    return v1
.end method

.method public akaGetBindSubscription(I)Ljava/lang/String;
    .registers 6
    .param p1, "slot"    # I

    .prologue
    const/4 v3, 0x0

    .line 400
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 401
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "akaGetBindSubscription : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 402
    if-eqz v0, :cond_25

    .line 403
    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->akaGetBindSubscription()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 405
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_25
    return-object v3
.end method

.method public akaGetEapSessionKey(I)Ljava/lang/String;
    .registers 6
    .param p1, "slot"    # I

    .prologue
    const/4 v3, 0x0

    .line 391
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 392
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "akaGetEapSessionKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 393
    if-eqz v0, :cond_25

    .line 394
    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->akaGetEapSessionKey()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 396
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_25
    return-object v3
.end method

.method public akaSendEapPackage(II[B)[B
    .registers 8
    .param p1, "slot"    # I
    .param p2, "len"    # I
    .param p3, "pkg_data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 382
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 383
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "akaSendEapPackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " len : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pkg_data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 384
    if-eqz v0, :cond_3b

    .line 385
    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->akaSendEapPackage(I[B)[B

    move-result-object v1

    return-object v1

    .line 387
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_3b
    return-object v3
.end method

.method public akaSetBindSubscription(II)Ljava/lang/String;
    .registers 7
    .param p1, "slot"    # I
    .param p2, "subs"    # I

    .prologue
    const/4 v3, 0x0

    .line 409
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 410
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "akaSetBindSubscription : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " subs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 411
    if-eqz v0, :cond_30

    .line 412
    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->akaSetBindSubscription(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 414
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_30
    return-object v3
.end method

.method public akaStartEapSession(IIIILjava/lang/String;)Z
    .registers 9
    .param p1, "slot"    # I
    .param p2, "eap_method"    # I
    .param p3, "eap_sim_aka_algo"    # I
    .param p4, "user_id_len"    # I
    .param p5, "user_id"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 364
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "akaStartEapSession : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " eap_method : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " eap_sim_aka_algo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    const-string/jumbo v2, " user_id_len : "

    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    const-string/jumbo v2, " user_id : "

    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 366
    if-eqz v0, :cond_50

    .line 367
    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->akaStartEapSession(IIILjava/lang/String;)Z

    move-result v1

    return v1

    .line 369
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_50
    const/4 v1, 0x0

    return v1
.end method

.method public deactivateUiccCard(I)I
    .registers 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    .line 123
    const/4 v1, -0x1

    .line 124
    .local v1, "ret":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->deactivateUiccCard(I)I

    move-result v1

    .line 125
    if-nez v1, :cond_4a

    .line 127
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_4a

    .line 129
    rsub-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getUiccApplicationCount(I)I

    move-result v3

    if-eqz v3, :cond_4a

    .line 132
    const-string/jumbo v3, "ExtTelephonyServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QtiSubscriptionController disable slotId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  auto swicth dds to other "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-result-object v3

    rsub-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemDdsSwitch(IZ)V

    .line 146
    :cond_49
    :goto_49
    return v1

    .line 137
    :cond_4a
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    rsub-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 138
    .local v2, "subId":[I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 139
    .local v0, "isSubActive":Z
    if-eqz v0, :cond_49

    .line 141
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultSmsSubId(I)V

    .line 142
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultVoiceSubId(I)V

    .line 143
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setConfigOfChangeDefaultVoiceSub(I)V

    goto :goto_49
.end method

.method public dispose()V
    .registers 1

    .prologue
    .line 620
    return-void
.end method

.method public generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 623
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->methodMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 624
    .local v1, "mapResult":Ljava/lang/Integer;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 625
    .local v0, "bundleResult":Landroid/os/Bundle;
    if-eqz v1, :cond_4b

    .line 626
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_68

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no mapping API in generalGetter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    .line 636
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    return-object v2

    .line 629
    :pswitch_33
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->enforceReadPhonePermission()V

    .line 630
    const-string/jumbo v2, "CMD_OP_REQUEST_IS_SOFTSIM"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 631
    const-string/jumbo v2, "isSoftSIM"

    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getPhoneIdbyBundleInfo(Landroid/os/Bundle;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isSoftSIM(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 632
    return-object v0

    .line 639
    :cond_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no mapping API in generalGetter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    .line 640
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    return-object v2

    .line 626
    :pswitch_data_68
    .packed-switch 0x6e
        :pswitch_33
    .end packed-switch
.end method

.method public generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 643
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->methodMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 644
    .local v1, "mapResult":Ljava/lang/Integer;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 645
    .local v0, "bundleResult":Landroid/os/Bundle;
    if-eqz v1, :cond_1a

    .line 646
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bundleResult":Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 647
    .restart local v0    # "bundleResult":Landroid/os/Bundle;
    return-object v0

    .line 649
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no mapping API in generalSetter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    .line 650
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    return-object v2
.end method

.method public getActiveSubscription()I
    .registers 4

    .prologue
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getActiveSubscription mDsda:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDsda:Lorg/codeaurora/internal/IDsda;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 194
    :try_start_19
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDsda:Lorg/codeaurora/internal/IDsda;

    invoke-interface {v1}, Lorg/codeaurora/internal/IDsda;->getActiveSubscription()I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_20

    move-result v1

    return v1

    .line 195
    :catch_20
    move-exception v0

    .line 196
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getActiveSubscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 198
    const/4 v1, -0x1

    return v1
.end method

.method public getCurrentPrimaryCardSlotId()I
    .registers 2

    .prologue
    .line 271
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getCurrentPrimarySlotFromDB(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .registers 3
    .param p1, "slotId"    # I

    .prologue
    .line 104
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    return v0
.end method

.method public getPhoneIdForECall()I
    .registers 2

    .prologue
    .line 168
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->getPhoneIdForECall()I

    move-result v0

    return v0
.end method

.method public getPrimaryCarrierSlotId()I
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 428
    const/4 v3, -0x1

    .line 430
    .local v3, "slotId":I
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    .line 431
    .local v6, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .line 433
    .local v0, "matchingCount":I
    if-eqz v6, :cond_15

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v9, :cond_1c

    .line 434
    :cond_15
    const-string/jumbo v7, "No active subscriptions found!!"

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    .line 435
    return v3

    .line 438
    :cond_1c
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "subInfo$iterator":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 439
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "mccMnc":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2

    .line 441
    .local v2, "provisionStatus":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "provisionStatus : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " slotId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 443
    if-ne v2, v9, :cond_20

    .line 444
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isPrimaryCarrierMccMnc(Ljava/lang/String;)Z

    move-result v7

    .line 443
    if-eqz v7, :cond_20

    .line 445
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found a matching combination, slotId  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_20

    .line 452
    .end local v1    # "mccMnc":Ljava/lang/String;
    .end local v2    # "provisionStatus":I
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_a6
    if-le v0, v9, :cond_bb

    .line 453
    const-string/jumbo v7, "Found multiple matches, returning primary slotid"

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 454
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 455
    const-string/jumbo v8, "config_current_primary_sub"

    .line 454
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 458
    :cond_bb
    return v3
.end method

.method public getPrimaryStackPhoneId()I
    .registers 2

    .prologue
    .line 173
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->getPrimaryStackPhoneId()I

    move-result v0

    return v0
.end method

.method public getSmscAddress(I)Ljava/lang/String;
    .registers 3
    .param p1, "slotId"    # I

    .prologue
    .line 511
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQtiSmscHelper:Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->getSmscAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUiccApplicationCount(I)I
    .registers 5
    .param p1, "slotId"    # I

    .prologue
    .line 210
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 211
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v1, 0x0

    .line 212
    .local v1, "count":I
    if-eqz v0, :cond_f

    .line 213
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v1

    .line 215
    :cond_f
    return v1
.end method

.method public getUiccApplicationState(II)I
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I

    .prologue
    .line 256
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 257
    .local v1, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v0, 0x0

    .line 258
    .local v0, "appState":I
    if-eqz v1, :cond_17

    .line 259
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v0

    .line 261
    :cond_17
    return v0
.end method

.method public getUiccApplicationType(II)I
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I

    .prologue
    .line 237
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 238
    .local v1, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v0, 0x0

    .line 239
    .local v0, "appType":I
    if-eqz v1, :cond_17

    .line 240
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v0

    .line 242
    :cond_17
    return v0
.end method

.method public getUiccCardProvisioningUserPreference(I)I
    .registers 3
    .param p1, "slotId"    # I

    .prologue
    .line 110
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getUiccCardProvisioningUserPreference(I)I

    move-result v0

    return v0
.end method

.method public getVirtualIccid(ILandroid/content/Context;)Ljava/lang/String;
    .registers 13
    .param p1, "slot"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 684
    const/4 v8, 0x0

    .line 688
    .local v8, "iccid":Ljava/lang/String;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "slot=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 689
    .local v9, "where":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->SOFTSIM_URL:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    .line 690
    const-string/jumbo v3, "slot"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "iccid"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "permit_package"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string/jumbo v3, "forbid_package"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string/jumbo v3, "pilot"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "slot"

    const/4 v4, 0x0

    .line 689
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 692
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_80

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 694
    .end local v8    # "iccid":Ljava/lang/String;
    :goto_59
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_81

    .line 695
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 696
    .local v8, "iccid":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_67} :catch_68

    goto :goto_59

    .line 701
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "iccid":Ljava/lang/String;
    .end local v9    # "where":Ljava/lang/StringBuilder;
    :catch_68
    move-exception v7

    .line 702
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getVirtualIccid SQLiteException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 705
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_80
    :goto_80
    return-object v8

    .line 698
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "where":Ljava/lang/StringBuilder;
    :cond_81
    :try_start_81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_84
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_81 .. :try_end_84} :catch_68

    goto :goto_80
.end method

.method public handleSar2France(Z)V
    .registers 3
    .param p1, "open"    # Z

    .prologue
    .line 319
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleSar2France(Z)V

    .line 320
    return-void
.end method

.method public isCdmaCard(I)Z
    .registers 8
    .param p1, "phoneId"    # I

    .prologue
    const/4 v5, 0x0

    .line 325
    const/4 v3, 0x0

    .line 326
    .local v3, "mAppCount":I
    const/4 v2, 0x0

    .line 327
    .local v2, "isCdmaCard":Z
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getUiccApplicationCount(I)I

    move-result v3

    .line 328
    if-nez v3, :cond_10

    .line 330
    const-string/jumbo v4, "isCdmaCard call 0 app"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 331
    return v5

    .line 334
    :cond_10
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_11
    if-ge v1, v3, :cond_1e

    .line 336
    invoke-virtual {p0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getUiccApplicationType(II)I

    move-result v0

    .line 337
    .local v0, "app_type":I
    const/4 v4, 0x3

    if-eq v0, v4, :cond_1d

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1f

    .line 339
    :cond_1d
    const/4 v2, 0x1

    .line 344
    .end local v0    # "app_type":I
    :cond_1e
    return v2

    .line 334
    .restart local v0    # "app_type":I
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public isDeviceInSingleStandby()Z
    .registers 2

    .prologue
    .line 295
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isDeviceInSingleStandby()Z

    move-result v0

    return v0
.end method

.method public isDsdaEnabled()Z
    .registers 3

    .prologue
    .line 306
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 307
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 306
    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isEmergencyNumber(Ljava/lang/String;)Z
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFdnEnabled()Z
    .registers 3

    .prologue
    .line 202
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 203
    .local v0, "card":Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_f

    .line 204
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    return v1

    .line 206
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public isLocalEmergencyNumber(Ljava/lang/String;)Z
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 280
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isPotentialEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPotentialLocalEmergencyNumber(Ljava/lang/String;)Z
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 290
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiEmergencyCallHelper;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPrimaryCarrierSlotId(I)Z
    .registers 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 488
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    .line 487
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 490
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v1, :cond_25

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No active subscription found on slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->loge(Ljava/lang/String;)V

    .line 492
    return v4

    .line 495
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->isPrimaryCarrierMccMnc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found a matching combination, slotId  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 499
    const/4 v2, 0x1

    return v2

    .line 501
    :cond_69
    return v4
.end method

.method public isSMSPromptEnabled()Z
    .registers 3

    .prologue
    .line 152
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-nez v0, :cond_f

    .line 153
    const-string/jumbo v0, "ExtTelephonyServiceImpl"

    const-string/jumbo v1, "QtiSubscriptionController getInstance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_f
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSMSPromptEnabled()Z

    move-result v0

    return v0
.end method

.method public isSoftSIM(I)Z
    .registers 3
    .param p1, "slot"    # I

    .prologue
    .line 678
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getVirtualIccid(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isTestCard(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 351

    .line 356
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public isVendorApkAvailable(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 517
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 518
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 520
    .local v1, "isApkAvailable":Z
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    .line 521
    const/4 v1, 0x1

    .line 525
    :goto_c
    return v1

    .line 522
    :catch_d
    move-exception v0

    .line 523
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Vendor apk not available for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public oemDdsSwitch(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 314
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemDdsSwitch(IZ)V

    .line 315
    return-void
.end method

.method public setDsdaAdapter(Lorg/codeaurora/internal/IDsda;)V
    .registers 4
    .param p1, "a"    # Lorg/codeaurora/internal/IDsda;

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDsdaAdapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 179
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDsda:Lorg/codeaurora/internal/IDsda;

    .line 180
    return-void
.end method

.method public setLocalCallHold(IZ)Z
    .registers 7
    .param p1, "subscriptionId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 299
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 300
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 301
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLocalCallHold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 302
    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->setLocalCallHold(Z)Z

    move-result v2

    return v2
.end method

.method public setPrimaryCardOnSlot(I)V
    .registers 3
    .param p1, "slotId"    # I

    .prologue
    .line 266
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->setPrimaryCardOnSlot(I)V

    .line 267
    return-void
.end method

.method public setSMSPromptEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 160
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    if-nez v0, :cond_f

    .line 161
    const-string/jumbo v0, "ExtTelephonyServiceImpl"

    const-string/jumbo v1, "QtiSubscriptionController getInstance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_f
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setSMSPromptEnabled(Z)V

    .line 164
    return-void
.end method

.method public setSmscAddress(ILjava/lang/String;)Z
    .registers 4
    .param p1, "slotId"    # I
    .param p2, "smsc"    # Ljava/lang/String;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mQtiSmscHelper:Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->setSmscAddress(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/internal/IDepersoResCallback;I)V
    .registers 6
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "callback"    # Lorg/codeaurora/internal/IDepersoResCallback;
    .param p4, "phoneId"    # I

    .prologue
    .line 221
    const-string/jumbo v0, "supplyIccDepersonalization"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/internal/IDepersoResCallback;I)V

    .line 224
    return-void
.end method

.method public switchToActiveSub(I)V
    .registers 5
    .param p1, "sub"    # I

    .prologue
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchToActiveSub:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mDsda:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDsda:Lorg/codeaurora/internal/IDsda;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    .line 185
    :try_start_24
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mDsda:Lorg/codeaurora/internal/IDsda;

    invoke-interface {v1, p1}, Lorg/codeaurora/internal/IDsda;->switchToActiveSub(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    .line 189
    :goto_29
    return-void

    .line 186
    :catch_2a
    move-exception v0

    .line 187
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchToActiveSub:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->logd(Ljava/lang/String;)V

    goto :goto_29
.end method
