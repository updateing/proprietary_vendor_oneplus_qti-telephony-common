.class public Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
.super Ljava/lang/Object;
.source "QtiRilInterface.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;,
        Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;,
        Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;,
        Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;,
        Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;
    }
.end annotation


# static fields
.field private static final BYTE_SIZE:I = 0x1

.field private static final INT_SIZE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "QtiRilInterface"

.field private static final NULL_TERMINATOR:C = '\u0000'

.field private static final NULL_TERMINATOR_LENGTH:I = 0x1

.field private static final SHORT_SIZE:I = 0x2

.field private static mIsServiceReady:Z

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# instance fields
.field private final ACTION_ADN_INIT_DONE:Ljava/lang/String;

.field private final ACTION_ADN_RECORDS_IND:Ljava/lang/String;

.field private OMH_FAKE_QCRIL_HOOK_RESPONSE:Ljava/lang/String;

.field private mAdnInitDoneRegistrantList:Landroid/os/RegistrantList;

.field private mAdnRecordsInfoRegistrantList:Landroid/os/RegistrantList;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private mServiceReadyRegistrantList:Landroid/os/RegistrantList;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->OMH_FAKE_QCRIL_HOOK_RESPONSE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnInitDoneRegistrantList:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnRecordsInfoRegistrantList:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic -get3()Z
    .registers 1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    return v0
.end method

.method static synthetic -get4(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .registers 1
    .param p0, "-value"    # Z

    .prologue
    sput-boolean p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    return p0
.end method

.method static synthetic -set1(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .registers 1
    .param p0, "-value"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .prologue
    sput-object p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;[BI)[I
    .registers 4
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .param p1, "buffer"    # [B
    .param p2, "numInts"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->parseInts([BI)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;[BI)Ljava/lang/Object;
    .registers 4
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .param p1, "data"    # [B
    .param p2, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->responseAdnRecords([BI)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;I)Ljava/util/ArrayList;
    .registers 3
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .param p1, "profileId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getFakeOmhProfiles(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;[B)Ljava/util/ArrayList;
    .registers 3
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .param p1, "buffer"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->parseOmhProfiles([B)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string/jumbo v1, "persist.test.omh.fakeprofile"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->OMH_FAKE_QCRIL_HOOK_RESPONSE:Ljava/lang/String;

    .line 77
    const-string/jumbo v1, "qualcomm.intent.action.ACTION_ADN_INIT_DONE"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->ACTION_ADN_INIT_DONE:Ljava/lang/String;

    .line 78
    const-string/jumbo v1, "qualcomm.intent.action.ACTION_ADN_RECORDS_IND"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->ACTION_ADN_RECORDS_IND:Ljava/lang/String;

    .line 83
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 678
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    const-string/jumbo v1, " in constructor "

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 115
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    .line 116
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnInitDoneRegistrantList:Landroid/os/RegistrantList;

    .line 117
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnRecordsInfoRegistrantList:Landroid/os/RegistrantList;

    .line 118
    new-instance v1, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v1, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "qualcomm.intent.action.ACTION_ADN_INIT_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string/jumbo v1, "qualcomm.intent.action.ACTION_ADN_RECORDS_IND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method private getFakeOmhProfiles(I)Ljava/util/ArrayList;
    .registers 10
    .param p1, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    const/4 v4, 0x2

    const/16 v5, 0x20

    const/16 v6, 0x40

    const/4 v7, 0x1

    filled-new-array {v4, v5, v6, v7}, [I

    move-result-object v1

    .line 176
    .local v1, "prioritySortedProfiles":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v3, "profilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v4, v1

    if-ge v0, v4, :cond_43

    .line 178
    aget v4, v1, v0

    if-ne v4, p1, :cond_44

    .line 179
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    aget v4, v1, v0

    invoke-direct {v2, v4, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;-><init>(II)V

    .line 180
    .local v2, "profile":Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "profile(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v2    # "profile":Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
    :cond_43
    return-object v3

    .line 177
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    monitor-enter v1

    .line 103
    :try_start_3
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    if-nez v0, :cond_12

    .line 104
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 109
    :goto_e
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2f

    monitor-exit v1

    return-object v0

    .line 106
    :cond_12
    :try_start_12
    const-string/jumbo v0, "QtiRilInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "instance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_2f

    goto :goto_e

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 764
    const-string/jumbo v0, "QtiRilInterface"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 772
    const-string/jumbo v0, "QtiRilInterface"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 768
    const-string/jumbo v0, "QtiRilInterface"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return-void
.end method

.method private parseInts([BI)[I
    .registers 8
    .param p1, "buffer"    # [B
    .param p2, "numInts"    # I

    .prologue
    .line 377
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 378
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "numInts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 381
    new-array v2, p2, [I

    .line 382
    .local v2, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, p2, :cond_49

    .line 383
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "response[i]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 387
    :cond_49
    return-object v2
.end method

.method private parseOmhProfiles([B)Ljava/util/ArrayList;
    .registers 11
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v6, "profilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;>;"
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 149
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_6b

    .line 150
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Data received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 156
    .local v2, "nProfiles":I
    const/4 v5, 0x0

    .line 157
    .local v5, "profileId":I
    const/4 v3, 0x0

    .line 159
    .local v3, "priority":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    if-ge v1, v2, :cond_6b

    .line 160
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 161
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 162
    new-instance v4, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    invoke-direct {v4, v5, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;-><init>(II)V

    .line 163
    .local v4, "profile":Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getOmhCallProfile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 168
    .end local v1    # "i":I
    .end local v2    # "nProfiles":I
    .end local v3    # "priority":I
    .end local v4    # "profile":Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
    .end local v5    # "profileId":I
    :cond_6b
    return-object v6
.end method

.method private responseAdnRecords([B)Ljava/lang/Object;
    .registers 25
    .param p1, "data"    # [B

    .prologue
    .line 588
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 589
    .local v7, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 591
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v17

    .line 594
    .local v17, "numRecords":I
    move/from16 v0, v17

    new-array v3, v0, [Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;

    .line 596
    .local v3, "AdnRecordsInfoGroup":[Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_16
    move/from16 v0, v17

    if-ge v11, v0, :cond_c5

    .line 597
    new-instance v20, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;

    invoke-direct/range {v20 .. v20}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;-><init>()V

    aput-object v20, v3, v11

    .line 599
    aget-object v20, v3, v11

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mRecordIndex:I

    .line 601
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    .line 602
    .local v14, "nameLength":I
    if-lez v14, :cond_4c

    .line 603
    new-array v4, v14, [B

    .line 604
    .local v4, "alphaTag":[B
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 606
    :try_start_38
    aget-object v20, v3, v11

    new-instance v21, Ljava/lang/String;

    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAlphaTag:Ljava/lang/String;
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_4c} :catch_ba

    .line 613
    .end local v4    # "alphaTag":[B
    :cond_4c
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v19

    .line 614
    .local v19, "numberLength":I
    if-lez v19, :cond_77

    .line 615
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 616
    .local v18, "number":[B
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 618
    :try_start_5d
    aget-object v20, v3, v11

    .line 619
    new-instance v21, Ljava/lang/String;

    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static/range {v21 .. v21}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->ConvertToPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 618
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mNumber:Ljava/lang/String;
    :try_end_77
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5d .. :try_end_77} :catch_d1

    .line 626
    .end local v18    # "number":[B
    :cond_77
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v16

    .line 627
    .local v16, "numEmails":I
    if-lez v16, :cond_e8

    .line 628
    aget-object v20, v3, v11

    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmailCount:I

    .line 629
    aget-object v20, v3, v11

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    .line 630
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_94
    move/from16 v0, v16

    if-ge v12, v0, :cond_e8

    .line 631
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    .line 633
    .local v10, "emailLength":I
    new-array v9, v10, [B

    .line 634
    .local v9, "email":[B
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 636
    :try_start_a1
    aget-object v20, v3, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/String;

    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v9, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v21, v20, v12
    :try_end_b7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a1 .. :try_end_b7} :catch_dd

    .line 630
    add-int/lit8 v12, v12, 0x1

    goto :goto_94

    .line 607
    .end local v9    # "email":[B
    .end local v10    # "emailLength":I
    .end local v12    # "j":I
    .end local v16    # "numEmails":I
    .end local v19    # "numberLength":I
    .restart local v4    # "alphaTag":[B
    :catch_ba
    move-exception v8

    .line 608
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v20, "Unsupport UTF-8 to parse name"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 663
    .end local v4    # "alphaTag":[B
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v14    # "nameLength":I
    :cond_c5
    :goto_c5
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 665
    return-object v3

    .line 620
    .restart local v14    # "nameLength":I
    .restart local v18    # "number":[B
    .restart local v19    # "numberLength":I
    :catch_d1
    move-exception v8

    .line 621
    .restart local v8    # "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v20, "Unsupport UTF-8 to parse number"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    goto :goto_c5

    .line 637
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v18    # "number":[B
    .restart local v9    # "email":[B
    .restart local v10    # "emailLength":I
    .restart local v12    # "j":I
    .restart local v16    # "numEmails":I
    :catch_dd
    move-exception v8

    .line 638
    .restart local v8    # "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v20, "Unsupport UTF-8 to parse email"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 644
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v9    # "email":[B
    .end local v10    # "emailLength":I
    .end local v12    # "j":I
    :cond_e8
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v15

    .line 645
    .local v15, "numAnrs":I
    if-lez v15, :cond_134

    .line 646
    aget-object v20, v3, v11

    move-object/from16 v0, v20

    iput v15, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumCount:I

    .line 647
    aget-object v20, v3, v11

    new-array v0, v15, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    .line 648
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_101
    if-ge v13, v15, :cond_134

    .line 649
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 651
    .local v6, "anrLength":I
    new-array v5, v6, [B

    .line 652
    .local v5, "anr":[B
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 654
    :try_start_10c
    aget-object v20, v3, v11

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    move-object/from16 v20, v0

    .line 655
    new-instance v21, Ljava/lang/String;

    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static/range {v21 .. v21}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->ConvertToPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 654
    aput-object v21, v20, v13
    :try_end_126
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10c .. :try_end_126} :catch_129

    .line 648
    add-int/lit8 v13, v13, 0x1

    goto :goto_101

    .line 656
    :catch_129
    move-exception v8

    .line 657
    .restart local v8    # "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v20, "Unsupport UTF-8 to parse anr"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 596
    .end local v5    # "anr":[B
    .end local v6    # "anrLength":I
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v13    # "k":I
    :cond_134
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_16
.end method

.method private responseAdnRecords([BI)Ljava/lang/Object;
    .registers 6
    .param p1, "data"    # [B
    .param p2, "phoneId"    # I

    .prologue
    .line 670
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 671
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 672
    const-string/jumbo v2, "adn_records"

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->responseAdnRecords([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 674
    return-object v0
.end method


# virtual methods
.method public akaEndEapSession(II)Z
    .registers 6
    .param p1, "eap_method"    # I
    .param p2, "eap_sim_aka_algo"    # I

    .prologue
    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->akaEndEapSession()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 722
    :catch_7
    move-exception v0

    .line 723
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 725
    const/4 v1, 0x0

    return v1
.end method

.method public akaGetBindSubscription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->akaGetBindSubscription()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 748
    :catch_7
    move-exception v0

    .line 749
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 751
    const/4 v1, 0x0

    return-object v1
.end method

.method public akaGetEapSessionKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 739
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->akaGetEapSessionKey()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 740
    :catch_7
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 743
    const/4 v1, 0x0

    return-object v1
.end method

.method public akaSendEapPackage(I[B)[B
    .registers 6
    .param p1, "len"    # I
    .param p2, "pkg_data"    # [B

    .prologue
    .line 730
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v1, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->akaSendEapPackage(I[B)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 731
    :catch_7
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 734
    const/4 v1, 0x0

    return-object v1
.end method

.method public akaSetBindSubscription(I)Ljava/lang/String;
    .registers 5
    .param p1, "subs"    # I

    .prologue
    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v1, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->akaSetBindSubscription(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 756
    :catch_7
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 759
    const/4 v1, 0x0

    return-object v1
.end method

.method public akaStartEapSession(IIILjava/lang/String;)Z
    .registers 8
    .param p1, "eap_method"    # I
    .param p2, "eap_sim_aka_algo"    # I
    .param p3, "user_id_len"    # I
    .param p4, "user_id"    # Ljava/lang/String;

    .prologue
    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->akaStartEapSession(IIILjava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 713
    :catch_7
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 716
    const/4 v1, 0x0

    return v1
.end method

.method public getAdnRecord(Landroid/os/Message;I)V
    .registers 9
    .param p1, "callbackMsg"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .prologue
    .line 425
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 426
    .local v2, "requestData":[B
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 427
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/16 v3, 0xa

    .line 429
    .local v3, "rspLength":I
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 430
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;

    const/16 v4, 0xa

    invoke-direct {v0, p0, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Landroid/os/Message;I)V

    .line 432
    .local v0, "oemHookCb":Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 433
    const v5, 0x800dd

    .line 432
    invoke-virtual {v4, v5, v2, v0, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 438
    const-string/jumbo v4, "getAdnRecord()"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public getLpluslSupportStatus()Z
    .registers 6

    .prologue
    .line 332
    const/4 v2, 0x0

    .line 333
    .local v2, "status":Z
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 334
    const v4, 0x8005e

    .line 333
    invoke-virtual {v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 335
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_24

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_24

    .line 336
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 337
    .local v1, "response":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_49

    const/4 v2, 0x1

    .line 340
    .end local v1    # "response":[B
    :cond_24
    :goto_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLpluslSupportStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 341
    return v2

    .line 337
    .restart local v1    # "response":[B
    :cond_49
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public getMaxDataAllowed()I
    .registers 6

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, "maxData":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 321
    const v4, 0x8005d

    .line 320
    invoke-virtual {v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 322
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1e

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1e

    .line 323
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 324
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 327
    .end local v2    # "response":[B
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMaxDataAllowed maxData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 328
    return v1
.end method

.method public getOmhCallProfile(ILandroid/os/Message;I)V
    .registers 9
    .param p1, "modemApnType"    # I
    .param p2, "callbackMsg"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 223
    const-string/jumbo v3, "getOmhCallProfile()"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 224
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 225
    .local v2, "requestData":[B
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 227
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 228
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;ILandroid/os/Message;)V

    .line 230
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 231
    const v4, 0x800ca

    .line 230
    invoke-virtual {v3, v4, v2, v0, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 235
    return-void
.end method

.method public getUiccIccId(I)Ljava/lang/String;
    .registers 8
    .param p1, "phoneId"    # I

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, "iccId":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v3, v4, [B

    .line 301
    .local v3, "requestData":[B
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 303
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 304
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 305
    const v5, 0x8005c

    .line 304
    invoke-virtual {v4, v5, v3, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 306
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_27

    .line 307
    new-instance v1, Ljava/lang/String;

    .end local v1    # "iccId":Ljava/lang/String;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 313
    :cond_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUiccIccId iccId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 315
    return-object v1
.end method

.method public getUiccProvisionPreference(I)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    .registers 8
    .param p1, "phoneId"    # I

    .prologue
    .line 127
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    invoke-direct {v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;-><init>()V

    .line 128
    .local v2, "provStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    const/4 v4, 0x0

    new-array v3, v4, [B

    .line 130
    .local v3, "requestData":[B
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 131
    const v5, 0x8005a

    .line 130
    invoke-virtual {v4, v5, v3, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 132
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_51

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_51

    .line 133
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 134
    .local v1, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Data received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 139
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 142
    .end local v1    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get pref, phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 143
    return-object v2
.end method

.method public isServiceReady()Z
    .registers 2

    .prologue
    .line 535
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    return v0
.end method

.method public qcRilSendDDSInfo(II)V
    .registers 4
    .param p1, "ddsPhoneId"    # I
    .param p2, "rilId"    # I

    .prologue
    .line 568
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSendDDSInfo(II)Z

    .line 569
    return-void
.end method

.method public registerForAdnInitDone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 556
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 558
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnInitDoneRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 559
    return-void
.end method

.method public registerForAdnRecordsInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 562
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 564
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnRecordsInfoRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 565
    return-void
.end method

.method public registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 8
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 547
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 549
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 550
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 551
    new-instance v1, Landroid/os/AsyncResult;

    sget-boolean v2, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 553
    :cond_1f
    return-void
.end method

.method public registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "event"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {p1, p2, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->register(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 540
    return-void
.end method

.method public sendPhoneStatus(II)V
    .registers 9
    .param p1, "isReady"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, "iccId":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [B

    .line 347
    .local v3, "requestData":[B
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 349
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    int-to-byte v4, p1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 350
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 351
    const v5, 0x8001a

    .line 350
    invoke-virtual {v4, v5, v3, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 352
    .local v0, "ar":Landroid/os/AsyncResult;
    return-void
.end method

.method public setLocalCallHold(IZ)Z
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 584
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->setLocalCallHold(IZ)Z

    move-result v0

    return v0
.end method

.method public setUiccProvisionPreference(II)Z
    .registers 9
    .param p1, "userPref"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 356
    const/4 v3, 0x0

    .line 357
    .local v3, "retval":Z
    const/16 v4, 0x8

    new-array v2, v4, [B

    .line 358
    .local v2, "requestData":[B
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 360
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 361
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 363
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 364
    const v5, 0x8005b

    .line 363
    invoke-virtual {v4, v5, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 365
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1f

    .line 366
    const/4 v3, 0x1

    .line 369
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set provision userPref "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 370
    const-string/jumbo v5, " exception: "

    .line 369
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 370
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 369
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 371
    return v3
.end method

.method public supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/internal/IDepersoResCallback;I)V
    .registers 13
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "callback"    # Lorg/codeaurora/internal/IDepersoResCallback;
    .param p4, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "supplyDepersonalization: netpin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 269
    const-string/jumbo v6, "phoneId = "

    .line 268
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 272
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    .line 275
    .local v3, "payload":[B
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    .line 276
    if-nez p1, :cond_6a

    const/4 v5, 0x1

    .line 275
    :goto_3c
    add-int v4, v6, v5

    .line 283
    .local v4, "payloadLength":I
    new-array v3, v4, [B

    .line 284
    .local v3, "payload":[B
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 286
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 287
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 289
    if-eqz p1, :cond_59

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 290
    :cond_59
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 292
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;

    invoke-direct {v2, p0, p3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Lorg/codeaurora/internal/IDepersoResCallback;Landroid/os/Message;)V

    .line 293
    .local v2, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 294
    const v6, 0x800d8

    .line 293
    invoke-virtual {v5, v6, v3, v2, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 296
    return-void

    .line 279
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    .end local v4    # "payloadLength":I
    .local v3, "payload":[B
    :cond_6a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3c
.end method

.method public unRegisterForServiceReadyEvent(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 573
    return-void
.end method

.method public unRegisterForUnsol(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->unregister(Landroid/os/Handler;)V

    .line 544
    return-void
.end method

.method public unregisterForAdnInitDone(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnInitDoneRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 577
    return-void
.end method

.method public unregisterForAdnRecordsInfo(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mAdnRecordsInfoRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 581
    return-void
.end method

.method public updateAdnRecord(Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;Landroid/os/Message;I)V
    .registers 19
    .param p1, "adnRecordInfo"    # Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;
    .param p2, "callbackMsg"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 443
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getNumEmails()I

    move-result v6

    .line 444
    .local v6, "numEmails":I
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getNumAdNumbers()I

    move-result v5

    .line 445
    .local v5, "numAdNumbers":I
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 449
    .local v7, "number":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_38

    const/4 v13, 0x0

    .line 448
    :goto_17
    add-int/lit8 v14, v13, 0xa

    .line 450
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_40

    .line 451
    const/4 v13, 0x0

    .line 448
    :goto_20
    add-int v1, v14, v13

    .line 452
    .local v1, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    if-ge v2, v6, :cond_48

    .line 453
    add-int/lit8 v1, v1, 0x2

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v2

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v1, v13

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 449
    .end local v1    # "dataSize":I
    .end local v2    # "i":I
    :cond_38
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_17

    .line 451
    :cond_40
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_20

    .line 456
    .restart local v1    # "dataSize":I
    .restart local v2    # "i":I
    :cond_48
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_49
    if-ge v3, v5, :cond_5e

    .line 457
    add-int/lit8 v1, v1, 0x2

    .line 458
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getAdNumbers()[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v3

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v1, v13

    .line 456
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 461
    :cond_5e
    new-array v10, v1, [B

    .line 462
    .local v10, "requestData":[B
    iget-object v13, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v10}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 463
    .local v9, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v11, 0x1

    .line 465
    .local v11, "rspLength":I
    new-instance v8, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-direct {v8, p0, v0, v13}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Landroid/os/Message;I)V

    .line 467
    .local v8, "oemHookCb":Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$AdnOemHookCallback;
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getRecordIndex()I

    move-result v13

    int-to-short v13, v13

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 468
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_ea

    .line 469
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    int-to-short v13, v13

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 471
    :try_start_86
    const-string/jumbo v13, "UTF-8"

    invoke-virtual {v4, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 472
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_94
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_86 .. :try_end_94} :catch_e2

    .line 482
    :goto_94
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_f7

    .line 483
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    int-to-short v13, v13

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 486
    :try_start_a3
    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->ConvertToRecordNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 485
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 487
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_b5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a3 .. :try_end_b5} :catch_ef

    .line 497
    :goto_b5
    int-to-short v13, v6

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 498
    const/4 v2, 0x0

    :goto_ba
    if-ge v2, v6, :cond_104

    .line 499
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v2

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    int-to-short v13, v13

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 501
    :try_start_cb
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v2

    const-string/jumbo v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 502
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_df
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_cb .. :try_end_df} :catch_fc

    .line 498
    add-int/lit8 v2, v2, 0x1

    goto :goto_ba

    .line 474
    :catch_e2
    move-exception v12

    .line 475
    .local v12, "usee":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v13, "Unsupport UTF-8 to parse name"

    invoke-direct {p0, v13}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 476
    return-void

    .line 479
    .end local v12    # "usee":Ljava/io/UnsupportedEncodingException;
    :cond_ea
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_94

    .line 489
    :catch_ef
    move-exception v12

    .line 490
    .restart local v12    # "usee":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v13, "Unsupport UTF-8 to parse number"

    invoke-direct {p0, v13}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 491
    return-void

    .line 494
    .end local v12    # "usee":Ljava/io/UnsupportedEncodingException;
    :cond_f7
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_b5

    .line 504
    :catch_fc
    move-exception v12

    .line 505
    .restart local v12    # "usee":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v13, "Unsupport UTF-8 to parse email"

    invoke-direct {p0, v13}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 506
    return-void

    .line 510
    .end local v12    # "usee":Ljava/io/UnsupportedEncodingException;
    :cond_104
    int-to-short v13, v5

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 511
    const/4 v3, 0x0

    :goto_109
    if-ge v3, v5, :cond_13d

    .line 512
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getAdNumbers()[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v3

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    int-to-short v13, v13

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 516
    :try_start_11a
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getAdNumbers()[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v3

    .line 515
    invoke-static {v13}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->ConvertToRecordNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 516
    const-string/jumbo v14, "UTF-8"

    .line 515
    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 514
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 517
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_132
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11a .. :try_end_132} :catch_135

    .line 511
    add-int/lit8 v3, v3, 0x1

    goto :goto_109

    .line 519
    :catch_135
    move-exception v12

    .line 520
    .restart local v12    # "usee":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v13, "Unsupport UTF-8 to parse anr"

    invoke-direct {p0, v13}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->loge(Ljava/lang/String;)V

    .line 521
    return-void

    .line 525
    .end local v12    # "usee":Ljava/io/UnsupportedEncodingException;
    :cond_13d
    iget-object v13, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 526
    const v14, 0x800de

    .line 525
    move/from16 v0, p3

    invoke-virtual {v13, v14, v10, v8, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 531
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateAdnRecord() with "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 532
    return-void
.end method
