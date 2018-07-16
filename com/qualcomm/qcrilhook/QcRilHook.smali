.class public Lcom/qualcomm/qcrilhook/QcRilHook;
.super Ljava/lang/Object;
.source "QcRilHook.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/IQcRilHook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/QcRilHook$1;,
        Lcom/qualcomm/qcrilhook/QcRilHook$2;,
        Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;,
        Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;,
        Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;
    }
.end annotation


# static fields
.field public static final ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW:Ljava/lang/String; = "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

.field private static final AVOIDANCE_BUFF_LEN:I = 0xa4

.field private static final BYTE_SIZE:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_PHONE:I = 0x0

.field private static final INT_SIZE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "QC_RIL_OEM_HOOK"

.field private static final MAX_PDC_ID_LEN:I = 0x7c

.field private static final MAX_REQUEST_BUFFER_SIZE:I = 0x400

.field private static final MAX_SPC_LEN:I = 0x6

.field public static final QCRIL_MSG_TUNNEL_PACKAGE_NAME:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel"

.field public static final QCRIL_MSG_TUNNEL_SERVICE_NAME:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field private static final VDBG:Z

.field private static mOnServiceConnectedRegistrants:Landroid/os/RegistrantList;

.field private static mRegistrants:Landroid/os/RegistrantList;


# instance fields
.field private final ENCODING:Ljava/lang/String;

.field private mBound:Z

.field private mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;

.field private final mHeaderSize:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mOemIdentifier:Ljava/lang/String;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qcrilhook/QcRilHook;)I
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qcrilhook/QcRilHook;

    .prologue
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    return v0
.end method

.method static synthetic -get1(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilhook/QcRilHookCallback;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qcrilhook/QcRilHook;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/qualcomm/qcrilhook/QcRilHook;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qcrilhook/QcRilHook;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object v0
.end method

.method static synthetic -set0(Lcom/qualcomm/qcrilhook/QcRilHook;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qcrilhook/QcRilHook;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    return p1
.end method

.method static synthetic -set1(Lcom/qualcomm/qcrilhook/QcRilHook;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qcrilhook/QcRilHook;
    .param p1, "-value"    # Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .prologue
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qcrilhook/QcRilHook;Ljava/lang/String;)V
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qcrilhook/QcRilHook;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1966
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOnServiceConnectedRegistrants:Landroid/os/RegistrantList;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v0, "QOEMHOOK"

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOemIdentifier:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    .line 81
    iput-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    .line 87
    iput-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 89
    const-string/jumbo v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->ENCODING:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mCr:Landroid/content/ContentResolver;

    .line 171
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$1;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1867
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$2;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    .line 105
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 107
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    if-nez v0, :cond_56

    .line 109
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    .line 115
    :goto_48
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_60

    .line 116
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "QcRilOemHook Service Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_55
    return-void

    .line 112
    :cond_56
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, " registrant created "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 118
    :cond_60
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "QcRilOemHook Service Created Successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v4, "QOEMHOOK"

    iput-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOemIdentifier:Ljava/lang/String;

    .line 71
    const-string/jumbo v4, "QOEMHOOK"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    .line 81
    iput-object v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 86
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    .line 87
    iput-object v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 89
    const-string/jumbo v4, "ISO-8859-1"

    iput-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->ENCODING:Ljava/lang/String;

    .line 101
    iput-object v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mCr:Landroid/content/ContentResolver;

    .line 171
    new-instance v4, Lcom/qualcomm/qcrilhook/QcRilHook$1;

    invoke-direct {v4, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$1;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1867
    new-instance v4, Lcom/qualcomm/qcrilhook/QcRilHook$2;

    invoke-direct {v4, p0}, Lcom/qualcomm/qcrilhook/QcRilHook$2;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    .line 133
    iput-object p2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 135
    sget-object v4, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    if-nez v4, :cond_4c

    .line 137
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    sput-object v4, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    .line 144
    :goto_3d
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    .line 146
    iget-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    if-nez v4, :cond_56

    .line 147
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Context is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :cond_4c
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, " registrant created 1 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 150
    :cond_56
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.qualcomm.qcrilmsgtunnel"

    const-string/jumbo v5, "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string/jumbo v4, "Starting QcrilMsgTunnel Service"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 154
    iget-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 156
    iget-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    .line 157
    const/4 v6, 0x1

    .line 156
    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    .line 158
    .local v3, "status":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attempt to bind service returned with: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 161
    :try_start_8f
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    const-string/jumbo v4, "Registering for intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a7} :catch_a8

    .line 169
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_a7
    return-void

    .line 165
    :catch_a8
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Uncaught Exception while while registering ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW intent. Reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7
.end method

.method private addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .registers 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # I
    .param p3, "requestSize"    # I

    .prologue
    .line 287
    const-string/jumbo v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 290
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 293
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 294
    return-void
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "bytes"    # [B

    .prologue
    .line 270
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 271
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 272
    return-object v0
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1904
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1912
    return-void
.end method

.method public static declared-synchronized notifyOnServiceConnect()V
    .registers 3

    .prologue
    const-class v1, Lcom/qualcomm/qcrilhook/QcRilHook;

    monitor-enter v1

    .line 1986
    :try_start_3
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v2, "Notifying registrants: OnServiceConnect"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOnServiceConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 1988
    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static notifyRegistrants(Landroid/os/AsyncResult;)V
    .registers 3
    .param p0, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1860
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_a

    .line 1861
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1865
    :goto_9
    return-void

    .line 1863
    :cond_a
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "QcRilOemHook notifyRegistrants Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public static register(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1823
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1824
    .local v0, "r":Landroid/os/Registrant;
    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 1825
    :try_start_8
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    monitor-exit v2

    .line 1827
    return-void

    .line 1824
    :catchall_f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static registerOnServiceConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1971
    const-string/jumbo v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerOnServiceConnected, H:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1973
    .local v0, "r":Landroid/os/Registrant;
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook;->mOnServiceConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1974
    return-void
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method private sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;
    .registers 15
    .param p1, "requestId"    # I
    .param p2, "request"    # [B
    .param p3, "phoneId"    # I

    .prologue
    const/4 v10, 0x0

    .line 310
    const/16 v7, 0x800

    new-array v4, v7, [B

    .line 312
    .local v4, "response":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 315
    :try_start_20
    iget-object v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    invoke-interface {v7, p2, v4, p3}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->sendOemRilRequestRaw([B[BI)I

    move-result v5

    .line 316
    .local v5, "retVal":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendOemRilRequestRaw returns value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 317
    if-ltz v5, :cond_54

    .line 318
    const/4 v6, 0x0

    .line 320
    .local v6, "validResponseBytes":[B
    if-lez v5, :cond_49

    .line 321
    new-array v6, v5, [B

    .line 322
    .local v6, "validResponseBytes":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v7, v6, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 324
    .end local v6    # "validResponseBytes":[B
    :cond_49
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v0, v7, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 347
    .end local v5    # "retVal":I
    .local v0, "ar":Landroid/os/AsyncResult;
    :goto_53
    return-object v0

    .line 331
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v5    # "retVal":I
    :cond_54
    array-length v7, v4

    new-array v6, v7, [B

    .line 332
    .restart local v6    # "validResponseBytes":[B
    array-length v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v8, v6, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 333
    mul-int/lit8 v7, v5, -0x1

    invoke-static {v7}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 334
    .local v3, "ex":Lcom/android/internal/telephony/CommandException;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, p2, v6, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_68} :catch_95
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_68} :catch_69

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_53

    .line 341
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "ex":Lcom/android/internal/telephony/CommandException;
    .end local v5    # "retVal":I
    .end local v6    # "validResponseBytes":[B
    :catch_69
    move-exception v2

    .line 342
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NullPointerException caught at sendOemRilRequestRaw.RequestID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 343
    const-string/jumbo v9, ". Return Error"

    .line 342
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7, v10, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_53

    .line 336
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_95
    move-exception v1

    .line 337
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendOemRilRequestRaw RequestID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 338
    const-string/jumbo v9, " exception, unable to send RIL request from this application"

    .line 337
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7, v10, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_53
.end method

.method private sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V
    .registers 10
    .param p1, "requestId"    # I
    .param p2, "request"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/IOemHookCallback;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendRilOemHookMsgAsync: Outgoing Data is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 361
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 360
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 364
    :try_start_1b
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    invoke-interface {v2, p2, p3, p4}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->sendOemRilRequestRawAsync([BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_20} :catch_21

    .line 373
    :goto_20
    return-void

    .line 368
    :catch_21
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NullPointerException caught at sendOemRilRequestRawAsync.RequestID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 370
    const-string/jumbo v4, ". Throw to the caller"

    .line 369
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    throw v1

    .line 365
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_44
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendOemRilRequestRawAsync RequestID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 367
    const-string/jumbo v4, " exception, unable to send RIL request from this application"

    .line 366
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method

.method public static unregister(Landroid/os/Handler;)V
    .registers 3
    .param p0, "h"    # Landroid/os/Handler;

    .prologue
    .line 1830
    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 1831
    :try_start_3
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 1833
    return-void

    .line 1830
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static unregisterOnServiceConnected(Landroid/os/Handler;)V
    .registers 4
    .param p0, "h"    # Landroid/os/Handler;

    .prologue
    .line 1979
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterOnServiceConnected, H:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook;->mOnServiceConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1981
    return-void
.end method

.method private validateInternalState()V
    .registers 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "QcRilHook is in disposed state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_f
    return-void
.end method


# virtual methods
.method public akaEndEapSession()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v6, 0x89006

    .line 2425
    const/4 v3, 0x1

    .line 2426
    .local v3, "result":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x8

    new-array v2, v4, [B

    .line 2427
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2429
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/16 v4, 0x8

    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2430
    sget-object v4, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_END_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v4}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2432
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "akaEndEapSession enter "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    invoke-direct {p0, v6, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2435
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2e

    .line 2437
    const/4 v3, 0x0

    .line 2440
    :cond_2e
    return v3
.end method

.method public akaGetBindSubscription()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const v7, 0x89006

    .line 2492
    const/4 v4, 0x0

    .line 2493
    .local v4, "result":Ljava/lang/String;
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x8

    new-array v3, v5, [B

    .line 2494
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2496
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/16 v5, 0x8

    invoke-direct {p0, v1, v7, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2497
    sget-object v5, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_GET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v5}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2499
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "akaGetBindSubscription enter "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    invoke-direct {p0, v7, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2502
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_36

    .line 2504
    new-instance v5, Ljava/lang/RuntimeException;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 2508
    :cond_36
    :try_start_36
    new-instance v4, Ljava/lang/String;

    .end local v4    # "result":Ljava/lang/String;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    const-string/jumbo v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_42
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_42} :catch_43

    .line 2513
    .local v4, "result":Ljava/lang/String;
    return-object v4

    .line 2509
    .end local v4    # "result":Ljava/lang/String;
    :catch_43
    move-exception v2

    .line 2510
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "unsupport ISO-8859-1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    return-object v8
.end method

.method public akaGetEapSessionKey()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const v7, 0x89006

    .line 2466
    const/4 v4, 0x0

    .line 2467
    .local v4, "result":Ljava/lang/String;
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x8

    new-array v3, v5, [B

    .line 2468
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2470
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/16 v5, 0x8

    invoke-direct {p0, v1, v7, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2471
    sget-object v5, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_GET_EAP_SESSION_KEY_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v5}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2473
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "akaGetEapSessionKey enter "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    invoke-direct {p0, v7, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2476
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_36

    .line 2478
    new-instance v5, Ljava/lang/RuntimeException;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 2482
    :cond_36
    :try_start_36
    new-instance v4, Ljava/lang/String;

    .end local v4    # "result":Ljava/lang/String;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    const-string/jumbo v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_42
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_42} :catch_43

    .line 2487
    .local v4, "result":Ljava/lang/String;
    return-object v4

    .line 2483
    .end local v4    # "result":Ljava/lang/String;
    :catch_43
    move-exception v2

    .line 2484
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "unsupport ISO-8859-1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    return-object v8
.end method

.method public akaSendEapPackage(I[B)[B
    .registers 9
    .param p1, "len"    # I
    .param p2, "pkg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v5, 0x89006

    .line 2445
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x4

    new-array v2, v3, [B

    .line 2446
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2448
    .local v1, "buf":Ljava/nio/ByteBuffer;
    add-int/lit8 v3, p1, 0x8

    add-int/lit8 v3, v3, 0x4

    invoke-direct {p0, v1, v5, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2449
    sget-object v3, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_SEND_EAP_PKG_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2450
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2451
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2453
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "akaSendEapPackage enter "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2456
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3f

    .line 2458
    new-instance v3, Ljava/lang/RuntimeException;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2461
    :cond_3f
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    return-object v3
.end method

.method public akaSetBindSubscription(I)Ljava/lang/String;
    .registers 11
    .param p1, "bind_subs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const v7, 0x89006

    .line 2518
    const/4 v4, 0x0

    .line 2519
    .local v4, "result":Ljava/lang/String;
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x4

    new-array v3, v5, [B

    .line 2520
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2522
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/16 v5, 0x8

    invoke-direct {p0, v1, v7, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2523
    sget-object v5, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_SET_BIND_SUBSCRIPTION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v5}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2524
    int-to-byte v5, p1

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2526
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "akaGetBindSubscription enter "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    invoke-direct {p0, v7, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2529
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_3c

    .line 2531
    new-instance v5, Ljava/lang/RuntimeException;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 2535
    :cond_3c
    :try_start_3c
    new-instance v4, Ljava/lang/String;

    .end local v4    # "result":Ljava/lang/String;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    const-string/jumbo v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_48
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3c .. :try_end_48} :catch_49

    .line 2540
    .local v4, "result":Ljava/lang/String;
    return-object v4

    .line 2536
    .end local v4    # "result":Ljava/lang/String;
    :catch_49
    move-exception v2

    .line 2537
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "unsupport ISO-8859-1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    return-object v8
.end method

.method public akaStartEapSession(IIILjava/lang/String;)Z
    .registers 12
    .param p1, "eap_method"    # I
    .param p2, "eap_sim_aka_algo"    # I
    .param p3, "user_id_len"    # I
    .param p4, "user_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v6, 0x89006

    .line 2402
    const/4 v3, 0x1

    .line 2403
    .local v3, "result":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v4, p3

    add-int/lit8 v4, v4, 0xa

    new-array v2, v4, [B

    .line 2404
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2406
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/16 v4, 0x12

    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2407
    sget-object v4, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->AKA_START_EAP_SESSION_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v4}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2408
    int-to-byte v4, p1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2409
    int-to-byte v4, p2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2410
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2411
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2413
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "akaStartEapSession enter "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    invoke-direct {p0, v6, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2416
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_43

    .line 2418
    const/4 v3, 0x0

    .line 2421
    :cond_43
    return v3
.end method

.method public dispose()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_31

    .line 247
    iget-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    if-eqz v0, :cond_1e

    .line 248
    const-string/jumbo v0, "dispose(): Unbinding service"

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilMsgTunnelConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 250
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-interface {v0}, Lcom/qualcomm/qcrilhook/QcRilHookCallback;->onQcRilHookDisconnected()V

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mBound:Z

    .line 253
    :cond_1e
    const-string/jumbo v0, "dispose(): Unregistering receiver"

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    iput-object v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    .line 257
    sput-object v2, Lcom/qualcomm/qcrilhook/QcRilHook;->mRegistrants:Landroid/os/RegistrantList;

    .line 258
    iput-object v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 260
    :cond_31
    return-void
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 1856
    const-string/jumbo v0, "is destroyed"

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1857
    return-void
.end method

.method public getLpluslSupportStatus()Z
    .registers 6

    .prologue
    .line 384
    const/4 v2, 0x0

    .line 386
    .local v2, "status":Z
    const v3, 0x8005e

    .line 385
    invoke-virtual {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 387
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_22

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_22

    .line 388
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 389
    .local v1, "response":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_47

    const/4 v2, 0x1

    .line 392
    .end local v1    # "response":[B
    :cond_22
    :goto_22
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

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 393
    return v2

    .line 389
    .restart local v1    # "response":[B
    :cond_47
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public getRegionalCountryCode()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const v7, 0x89006

    .line 2319
    const/4 v4, 0x0

    .line 2320
    .local v4, "result":Ljava/lang/String;
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x8

    new-array v3, v5, [B

    .line 2321
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2323
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/16 v5, 0x8

    invoke-direct {p0, v1, v7, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2324
    sget-object v5, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_GET_Country_Code:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v5}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2326
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "oemSetRadioFTM enter "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    invoke-direct {p0, v7, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2329
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_36

    .line 2331
    new-instance v5, Ljava/lang/RuntimeException;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 2335
    :cond_36
    :try_start_36
    new-instance v4, Ljava/lang/String;

    .end local v4    # "result":Ljava/lang/String;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    const-string/jumbo v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_42
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_42} :catch_43

    .line 2340
    .local v4, "result":Ljava/lang/String;
    return-object v4

    .line 2336
    .end local v4    # "result":Ljava/lang/String;
    :catch_43
    move-exception v2

    .line 2337
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "unsupport ISO-8859-1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    return-object v8
.end method

.method public isDisposed()Z
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;
    .registers 12
    .param p1, "rilcmd"    # Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;
    .param p2, "data"    # [B
    .param p3, "datalen"    # I

    .prologue
    const/4 v6, 0x0

    const v7, 0x89001

    const/4 v4, 0x0

    .line 1998
    if-ltz p3, :cond_b

    const/16 v5, 0x400

    if-le p3, v5, :cond_15

    .line 2000
    :cond_b
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "QCRIL_EVT_OEM_HOOK_AP2MODEM_REQ length error "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    return-object v6

    .line 2004
    :cond_15
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    mul-int/lit8 v6, p3, 0x1

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x8

    new-array v3, v5, [B

    .line 2005
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2007
    .local v2, "buf":Ljava/nio/ByteBuffer;
    mul-int/lit8 v5, p3, 0x1

    add-int/lit8 v5, v5, 0x8

    invoke-direct {p0, v2, v7, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2008
    invoke-virtual {p1}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->value()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2009
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2010
    if-eqz p2, :cond_42

    if-lez p3, :cond_42

    .line 2012
    array-length v5, p2

    :goto_38
    if-ge v4, v5, :cond_42

    aget-byte v1, p2, v4

    .line 2013
    .local v1, "b":B
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2012
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 2017
    .end local v1    # "b":B
    :cond_42
    invoke-direct {p0, v7, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2018
    .local v0, "ar":Landroid/os/AsyncResult;
    return-object v0
.end method

.method public oemGetQcomSimLockStatus()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2199
    const/4 v0, 0x0

    .line 2226
    .local v0, "ret":Z
    return v0
.end method

.method public oemGetSimLockRemainedTimes()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v7, 0x89005

    const/4 v8, 0x0

    .line 2046
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x8

    new-array v3, v5, [B

    .line 2047
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2048
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/4 v4, -0x1

    .line 2050
    .local v4, "ret":I
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "oemGetSimLockRemainedTimes enter "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    const/16 v5, 0x8

    invoke-direct {p0, v1, v7, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2052
    sget-object v5, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_GET_RE_TIMES:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    invoke-virtual {v5}, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->value()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2054
    invoke-direct {p0, v7, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2055
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_40

    .line 2057
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "oemGetSimLockRemainedTimes return exception "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    new-instance v5, Ljava/lang/Exception;

    const-string/jumbo v6, "oemGetSimLockRemainedTimes exc exception"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2060
    :cond_40
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_68

    .line 2062
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 2063
    .local v2, "bytes":[B
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oemGetSimLockRemainedTimes return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    aget-byte v5, v2, v8

    and-int/lit16 v4, v5, 0xff

    .line 2066
    .end local v2    # "bytes":[B
    :cond_68
    return v4
.end method

.method public oemRecoverRadioMode()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v7, 0x89006

    const/4 v6, 0x0

    .line 2289
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x8

    new-array v3, v4, [B

    .line 2290
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2292
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/16 v4, 0x8

    invoke-direct {p0, v2, v7, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2293
    iget-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    if-nez v4, :cond_20

    .line 2295
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "mContext is null"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2297
    :cond_20
    iget-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mCr:Landroid/content/ContentResolver;

    .line 2298
    iget-object v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2300
    .local v0, "airplaneMode":I
    if-lez v0, :cond_55

    .line 2302
    sget-object v4, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_LPM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v4}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2309
    :goto_3c
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "oemRecoverRadioMode enter "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    invoke-direct {p0, v7, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v1

    .line 2312
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5f

    .line 2314
    new-instance v4, Ljava/lang/RuntimeException;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 2306
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_55
    sget-object v4, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_ON_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v4}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_3c

    .line 2316
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    :cond_5f
    return-void
.end method

.method public oemSetRadioFTM()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v5, 0x89006

    .line 2258
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v3, v3, 0x8

    new-array v2, v3, [B

    .line 2259
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2261
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/16 v3, 0x8

    invoke-direct {p0, v1, v5, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2262
    sget-object v3, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_FTM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2264
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "oemSetRadioFTM enter "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2267
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_34

    .line 2269
    new-instance v3, Ljava/lang/RuntimeException;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2271
    :cond_34
    return-void
.end method

.method public oemSetRadioLPM()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v5, 0x89006

    .line 2274
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v3, v3, 0x8

    new-array v2, v3, [B

    .line 2275
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2277
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/16 v3, 0x8

    invoke-direct {p0, v1, v5, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2278
    sget-object v3, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->QCRILHOOK_RADIO_LPM_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/QcRilHook$Hook2QcrilCmdReqType;->value()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2280
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "oemSetRadioFTM enter "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2283
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_34

    .line 2285
    new-instance v3, Ljava/lang/RuntimeException;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2287
    :cond_34
    return-void
.end method

.method public oemSetSimLockUnslEnable()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v7, 0x89005

    const/4 v8, 0x0

    .line 2165
    const/4 v4, 0x0

    .line 2166
    .local v4, "ret":Z
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x8

    new-array v3, v5, [B

    .line 2167
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2169
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/16 v5, 0x8

    invoke-direct {p0, v1, v7, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2170
    sget-object v5, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_SET_UNSL_ENABLE:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    invoke-virtual {v5}, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->value()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2172
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "oemSetSimLockUnslEnable enter "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    invoke-direct {p0, v7, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2175
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_3f

    .line 2177
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "oemSetSimLockUnslEnable return exception "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    new-instance v5, Ljava/lang/RuntimeException;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 2180
    :cond_3f
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_69

    .line 2182
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 2183
    .local v2, "bytes":[B
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oemSetSimLockUnslEnable return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    aget-byte v5, v2, v8

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6a

    .line 2186
    const/4 v4, 0x1

    .line 2193
    .end local v2    # "bytes":[B
    :cond_69
    :goto_69
    return v4

    .line 2190
    .restart local v2    # "bytes":[B
    :cond_6a
    const/4 v4, 0x0

    goto :goto_69
.end method

.method public oemSimLockLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)B
    .registers 16
    .param p1, "imei1"    # Ljava/lang/String;
    .param p2, "imei2"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v11, 0x89005

    const/16 v9, 0xf

    const/4 v10, 0x0

    .line 2123
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2124
    .local v3, "imei1_imei2_pwd":Ljava/lang/String;
    const/4 v6, -0x1

    .line 2125
    .local v6, "ret":B
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 2126
    .local v4, "len":I
    iget v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v7, v7, 0x8

    mul-int/lit8 v8, v4, 0x1

    add-int/2addr v7, v8

    new-array v5, v7, [B

    .line 2127
    .local v5, "payload":[B
    invoke-static {v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2129
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    const-string/jumbo v8, "oemSimLockLock enter "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v9, :cond_42

    .line 2131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v9, :cond_54

    .line 2134
    :cond_42
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    const-string/jumbo v8, "oemSimLockLock params length error "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v8, "input params length error"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2132
    :cond_54
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_42

    .line 2138
    mul-int/lit8 v7, v4, 0x1

    add-int/lit8 v7, v7, 0x8

    invoke-direct {p0, v1, v11, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2139
    sget-object v7, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_LOCKED_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    invoke-virtual {v7}, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->value()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2140
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2141
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2143
    invoke-direct {p0, v11, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2145
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_8f

    .line 2147
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    const-string/jumbo v8, "oemSimLockLock return exception "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    new-instance v7, Ljava/lang/RuntimeException;

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 2150
    :cond_8f
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_b5

    .line 2152
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 2153
    .local v2, "bytes":[B
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "oemSimLockLock return "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    aget-byte v6, v2, v10

    .line 2156
    .end local v2    # "bytes":[B
    .end local v6    # "ret":B
    :cond_b5
    return v6
.end method

.method public oemSimLockUnlock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)B
    .registers 16
    .param p1, "imei1"    # Ljava/lang/String;
    .param p2, "imei2"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v11, 0x89005

    const/16 v9, 0xf

    const/4 v10, 0x0

    .line 2078
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2079
    .local v3, "imei1_imei2_pwd":Ljava/lang/String;
    const/4 v6, -0x1

    .line 2080
    .local v6, "ret":B
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 2081
    .local v4, "len":I
    iget v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v7, v7, 0x8

    mul-int/lit8 v8, v4, 0x1

    add-int/2addr v7, v8

    new-array v5, v7, [B

    .line 2082
    .local v5, "payload":[B
    invoke-static {v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2084
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    const-string/jumbo v8, "oemSimLockUnlock enter "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v9, :cond_42

    .line 2086
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v9, :cond_54

    .line 2089
    :cond_42
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    const-string/jumbo v8, "oemSimLockUnlock params length error "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v8, "input params length error"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2087
    :cond_54
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_42

    .line 2093
    mul-int/lit8 v7, v4, 0x1

    add-int/lit8 v7, v7, 0x8

    invoke-direct {p0, v1, v11, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2094
    sget-object v7, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->SIMLOCK_UNLOCK_REQ:Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;

    invoke-virtual {v7}, Lcom/qualcomm/qcrilhook/QcRilHook$SimLockCmdReqType;->value()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2095
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2096
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2098
    invoke-direct {p0, v11, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2100
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_8f

    .line 2102
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    const-string/jumbo v8, "oemSimLockUnlock return exception "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    new-instance v7, Ljava/lang/RuntimeException;

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 2105
    :cond_8f
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_b5

    .line 2107
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 2108
    .local v2, "bytes":[B
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "oemSimLockUnlock return "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    aget-byte v6, v2, v10

    .line 2111
    .end local v2    # "bytes":[B
    .end local v6    # "ret":B
    :cond_b5
    return v6
.end method

.method public oem_dispose()V
    .registers 3

    .prologue
    .line 1992
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "[oem] dispose of QcRilHook."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->dispose()V

    .line 1994
    return-void
.end method

.method public qcRilAbortNetworkScan(I)Z
    .registers 9
    .param p1, "phoneId"    # I

    .prologue
    const v5, 0x8005f

    .line 1323
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1324
    const/4 v3, 0x0

    .line 1325
    .local v3, "retval":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v2, v4, [B

    .line 1327
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1329
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1, v5, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1331
    invoke-direct {p0, v5, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1334
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1c

    .line 1335
    const/4 v3, 0x1

    .line 1340
    :goto_1b
    return v3

    .line 1337
    :cond_1c
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL cancel ongoing nw scan returned exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1338
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1337
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public qcRilActivateConfig(I)Z
    .registers 3
    .param p1, "phoneId"    # I

    .prologue
    .line 726
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilActivateConfig(II)Z

    move-result v0

    return v0
.end method

.method public qcRilActivateConfig(II)Z
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "mbnType"    # I

    .prologue
    const v4, 0x80032

    .line 740
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 741
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [B

    .line 742
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 743
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x5

    invoke-direct {p0, v2, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 744
    int-to-byte v3, p1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 745
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 747
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 748
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_43

    .line 749
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_ACT_CONFIGS failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 750
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 749
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v3, 0x0

    return v3

    .line 753
    :cond_43
    const/4 v3, 0x1

    return v3
.end method

.method public qcRilCdmaAvoidCurNwk()Z
    .registers 6

    .prologue
    .line 1223
    const/4 v1, 0x0

    .line 1224
    .local v1, "retval":Z
    const v2, 0x8000e

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1226
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 1227
    const/4 v1, 0x1

    .line 1232
    :goto_d
    return v1

    .line 1229
    :cond_e
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QCRIL Avoid the current cdma network Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1230
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public qcRilCdmaClearAvoidanceList()Z
    .registers 6

    .prologue
    .line 1258
    const/4 v1, 0x0

    .line 1259
    .local v1, "retval":Z
    const v2, 0x8000f

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1261
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 1262
    const/4 v1, 0x1

    .line 1267
    :goto_d
    return v1

    .line 1264
    :cond_e
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QCRIL Clear the cdma avoidance list Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1265
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1264
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public qcRilCdmaGetAvoidanceList()[B
    .registers 7

    .prologue
    .line 1271
    const/4 v2, 0x0

    .line 1272
    .local v2, "retval":[B
    const v3, 0x80010

    invoke-virtual {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1274
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_41

    .line 1275
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_37

    .line 1280
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 1281
    .local v1, "result":[B
    array-length v3, v1

    const/16 v4, 0xa4

    if-ne v3, v4, :cond_1b

    .line 1284
    move-object v2, v1

    .line 1298
    .end local v1    # "result":[B
    .end local v2    # "retval":[B
    :goto_1a
    return-object v2

    .line 1286
    .restart local v1    # "result":[B
    .restart local v2    # "retval":[B
    :cond_1b
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL Get unexpected cdma avoidance list buffer length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1287
    array-length v5, v1

    .line 1286
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 1290
    .end local v1    # "result":[B
    :cond_37
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "QCRIL Get cdma avoidance list command returned a null result."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 1294
    :cond_41
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL Get the cdma avoidance list Command returned Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1295
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1294
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public qcRilCleanupConfigs()Z
    .registers 6

    .prologue
    .line 833
    const/4 v1, 0x0

    .line 834
    .local v1, "retval":Z
    const v2, 0x8001f

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 836
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 837
    const/4 v1, 0x1

    .line 843
    :goto_d
    return v1

    .line 839
    :cond_e
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QCRIL_EVT_HOOK_DELETE_ALL_CONFIGS failed w/ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 840
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 839
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public qcRilDeactivateConfigs()Z
    .registers 2

    .prologue
    .line 846
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilDeactivateConfigs(I)Z

    move-result v0

    return v0
.end method

.method public qcRilDeactivateConfigs(I)Z
    .registers 9
    .param p1, "mbnType"    # I

    .prologue
    const v5, 0x8002c

    .line 859
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 860
    const/4 v3, 0x0

    .line 861
    .local v3, "retval":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x4

    new-array v1, v4, [B

    .line 862
    .local v1, "payload":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 864
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x4

    invoke-direct {p0, v2, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 865
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 867
    invoke-direct {p0, v5, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 869
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_22

    .line 870
    const/4 v3, 0x1

    .line 876
    :goto_21
    return v3

    .line 872
    :cond_22
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_DEACT_CONFIGS failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 873
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 872
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public qcRilGetAllConfigs()Z
    .registers 5

    .prologue
    .line 816
    const v1, 0x80017

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 817
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_29

    .line 818
    const-string/jumbo v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QCRIL_EVT_HOOK_GET_AVAILABLE_CONFIGS failed w/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 819
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 818
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v1, 0x0

    return v1

    .line 822
    :cond_29
    const/4 v1, 0x1

    return v1
.end method

.method public qcRilGetAvailableConfigs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "device"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 804
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "qcRilGetAvailableConfigs is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v0, 0x0

    return-object v0
.end method

.method public qcRilGetConfig()Ljava/lang/String;
    .registers 2

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetConfig(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetConfig(I)Ljava/lang/String;
    .registers 3
    .param p1, "phoneId"    # I

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetConfig(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetConfig(II)Ljava/lang/String;
    .registers 11
    .param p1, "phoneId"    # I
    .param p2, "mbnType"    # I

    .prologue
    const v6, 0x80016

    const/4 v7, 0x0

    .line 407
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 408
    const/4 v4, 0x0

    .line 409
    .local v4, "result":Ljava/lang/String;
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [B

    .line 410
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 412
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x5

    invoke-direct {p0, v3, v6, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 413
    int-to-byte v5, p1

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 414
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 416
    invoke-direct {p0, v6, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 418
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_44

    .line 419
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL_EVT_HOOK_GET_CONFIG failed w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 420
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 419
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-object v4

    .line 424
    :cond_44
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_52

    .line 425
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_CONFIG failed w/ null result"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-object v4

    .line 431
    :cond_52
    :try_start_52
    new-instance v4, Ljava/lang/String;

    .end local v4    # "result":Ljava/lang/String;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    const-string/jumbo v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_52 .. :try_end_5e} :catch_76

    .line 436
    .local v4, "result":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_CONFIG returned w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 438
    return-object v4

    .line 432
    .end local v4    # "result":Ljava/lang/String;
    :catch_76
    move-exception v1

    .line 433
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "unsupport ISO-8859-1"

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 434
    return-object v7
.end method

.method public qcRilGetCsgId()I
    .registers 7

    .prologue
    .line 1175
    const/4 v1, -0x1

    .line 1176
    .local v1, "csgId":I
    const v3, 0x80018

    invoke-virtual {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1177
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3e

    .line 1178
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_34

    .line 1179
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1180
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 1181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "qcRilGetCsgId: csg Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1188
    .end local v2    # "response":[B
    :goto_33
    return v1

    .line 1183
    :cond_34
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "qcRilGetCsgId: Null Response"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 1186
    :cond_3e
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilGetCsgId: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public qcRilGetMetaInfoForConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 926
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilGetMetaInfoForConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public qcRilGetMetaInfoForConfig(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "mbnType"    # I

    .prologue
    const v8, 0x80021

    const/4 v7, 0x0

    .line 931
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 932
    const/4 v4, 0x0

    .line 933
    .local v4, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 935
    .local v3, "payload":[B
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_ae

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x7c

    if-gt v5, v6, :cond_ae

    .line 937
    :try_start_17
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    const-string/jumbo v6, "ISO-8859-1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v5, v6

    new-array v3, v5, [B

    .line 938
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 940
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x4

    .line 939
    const v6, 0x80021

    invoke-direct {p0, v1, v6, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 941
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 942
    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_47} :catch_6c

    .line 948
    invoke-direct {p0, v8, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 950
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_74

    .line 951
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL_EVT_HOOK_GET_META_INFO failed w/ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 952
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 951
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-object v4

    .line 943
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    :catch_6c
    move-exception v2

    .line 944
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "unsupport ISO-8859-1"

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 945
    return-object v7

    .line 956
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local v3    # "payload":[B
    :cond_74
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_82

    .line 957
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_META_INFO failed w/ null result"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-object v4

    .line 963
    :cond_82
    :try_start_82
    new-instance v4, Ljava/lang/String;

    .end local v4    # "result":Ljava/lang/String;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    const-string/jumbo v6, "ISO-8859-1"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_8e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_82 .. :try_end_8e} :catch_a6

    .line 968
    .local v4, "result":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_META_INFO returned w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 972
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    .end local v4    # "result":Ljava/lang/String;
    :goto_a5
    return-object v4

    .line 964
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local v3    # "payload":[B
    :catch_a6
    move-exception v2

    .line 965
    .restart local v2    # "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "unsupport ISO-8859-1"

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 966
    return-object v7

    .line 970
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .local v3, "payload":[B
    .local v4, "result":Ljava/lang/String;
    :cond_ae
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get meta info with incorrect config id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5
.end method

.method public qcRilGetOemVersionOfFile(Ljava/lang/String;)[B
    .registers 9
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const v5, 0x80030

    const/4 v6, 0x0

    .line 605
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 606
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 607
    return-object v6

    .line 609
    :cond_e
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v2, v3, [B

    .line 610
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 611
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {p0, v1, v5, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 612
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 614
    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 615
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_50

    .line 616
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 617
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 616
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-object v6

    .line 620
    :cond_50
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_5e

    .line 621
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE failed w/ null result"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-object v6

    .line 626
    :cond_5e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_FILE returned w/ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 627
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    return-object v3
.end method

.method public qcRilGetOemVersionOfID(Ljava/lang/String;)[B
    .registers 10
    .param p1, "config_id"    # Ljava/lang/String;

    .prologue
    const v6, 0x80031

    const/4 v7, 0x0

    .line 683
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 684
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-le v4, v5, :cond_1f

    .line 685
    :cond_15
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "invalid config_id"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-object v7

    .line 689
    :cond_1f
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 690
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 692
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 691
    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 694
    :try_start_33
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_3d} :catch_62

    .line 700
    invoke-direct {p0, v6, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 701
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_6a

    .line 702
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 703
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 702
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-object v7

    .line 695
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_62
    move-exception v2

    .line 696
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "unsupport ISO-8859-1"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 697
    return-object v7

    .line 706
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_6a
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_78

    .line 707
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID failed w/ null result"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-object v7

    .line 712
    :cond_78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_OEM_VERSION_OF_ID returned w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 713
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    return-object v4
.end method

.method public qcRilGetPreferredNetworkAcqOrder(I)B
    .registers 12
    .param p1, "phoneId"    # I

    .prologue
    .line 1411
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1412
    const/4 v0, 0x0

    .line 1413
    .local v0, "acq_order":B
    const v5, 0x8001c

    .line 1414
    .local v5, "requestId":I
    iget v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v4, v7, [B

    .line 1415
    .local v4, "request":[B
    invoke-static {v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1417
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v7, 0x4

    invoke-direct {p0, v3, v5, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1418
    invoke-direct {p0, v5, v4, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v1

    .line 1420
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_4d

    .line 1421
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_43

    .line 1422
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    .line 1423
    .local v6, "result":[B
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1424
    .local v2, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1425
    .local v0, "acq_order":B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "acq order is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1433
    .end local v0    # "acq_order":B
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v6    # "result":[B
    :goto_42
    return v0

    .line 1427
    .local v0, "acq_order":B
    :cond_43
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    const-string/jumbo v8, "no acq order result return"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 1430
    :cond_4d
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "QCRIL set acq order cmd returned exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method public qcRilGetPreferredNetworkBandPref(II)B
    .registers 13
    .param p1, "bandType"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1674
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1675
    const/4 v1, 0x0

    .line 1676
    .local v1, "band_pref":B
    const v5, 0x80026

    .line 1677
    .local v5, "requestId":I
    iget v7, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v4, v7, [B

    .line 1678
    .local v4, "request":[B
    invoke-static {v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1680
    .local v3, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v7, 0x4

    invoke-direct {p0, v3, v5, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1681
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1683
    invoke-direct {p0, v5, v4, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1685
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_50

    .line 1686
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_46

    .line 1687
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    .line 1688
    .local v6, "result":[B
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1689
    .local v2, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 1690
    .local v1, "band_pref":B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "band pref is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1698
    .end local v1    # "band_pref":B
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v6    # "result":[B
    :goto_45
    return v1

    .line 1692
    .local v1, "band_pref":B
    :cond_46
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    const-string/jumbo v8, "no band pref result return"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 1695
    :cond_50
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "QCRIL get band perf cmd returned exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method public qcRilGetPrioritySub()I
    .registers 8

    .prologue
    .line 1017
    const/4 v3, 0x0

    .line 1018
    .local v3, "retval":I
    const v4, 0x80008

    invoke-virtual {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v2

    .line 1020
    .local v2, "result":Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_29

    .line 1021
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL  get priority sub Command returned Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1022
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1021
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :goto_28
    return v3

    .line 1023
    :cond_29
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_54

    .line 1024
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1025
    .local v0, "buf":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1026
    .local v1, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 1027
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "qcRilGetPrioritySub: priority subscription is :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1029
    .end local v0    # "buf":[B
    .end local v1    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_54
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "QCRIL get priority sub Command returned null response "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public qcRilGetPrioritySubscription()I
    .registers 7

    .prologue
    .line 1192
    const/4 v2, 0x0

    .line 1193
    .local v2, "subscriptionIndex":I
    const v3, 0x80008

    invoke-virtual {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1194
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3e

    .line 1195
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_34

    .line 1196
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 1197
    .local v1, "response":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 1198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "qcRilGetPrioritySubscription: subscriptionIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1206
    .end local v1    # "response":[B
    :goto_33
    return v2

    .line 1201
    :cond_34
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "qcRilGetPrioritySubscription: Null Response"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 1204
    :cond_3e
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilGetPrioritySubscription: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public qcRilGetQcVersionOfFile(Ljava/lang/String;)[B
    .registers 9
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const v5, 0x8002d

    const/4 v6, 0x0

    .line 570
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 571
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 572
    return-object v6

    .line 574
    :cond_e
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v2, v3, [B

    .line 575
    .local v2, "payload":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 576
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {p0, v1, v5, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 577
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 579
    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 580
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_50

    .line 581
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE failed w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 582
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 581
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-object v6

    .line 585
    :cond_50
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_5e

    .line 586
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    const-string/jumbo v4, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE failed w/ null result"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-object v6

    .line 591
    :cond_5e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_FILE returned w/ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 592
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    return-object v3
.end method

.method public qcRilGetQcVersionOfID(Ljava/lang/String;)[B
    .registers 10
    .param p1, "configId"    # Ljava/lang/String;

    .prologue
    const v6, 0x8002f

    const/4 v7, 0x0

    .line 640
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 641
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-le v4, v5, :cond_1f

    .line 642
    :cond_15
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "invalid config id"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-object v7

    .line 646
    :cond_1f
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 647
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 649
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 648
    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 651
    :try_start_33
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_3d} :catch_62

    .line 657
    invoke-direct {p0, v6, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 658
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_6a

    .line 659
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 660
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 659
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-object v7

    .line 652
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_62
    move-exception v2

    .line 653
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "unsupport ISO-8859-1"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 654
    return-object v7

    .line 663
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_6a
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_78

    .line 664
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID failed w/ null result"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return-object v7

    .line 669
    :cond_78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL_EVT_HOOK_GET_QC_VERSION_OF_ID returned w/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 670
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    return-object v4
.end method

.method public qcRilGetSlotStatus()[B
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1711
    const v1, 0x800da

    invoke-virtual {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1712
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_29

    .line 1713
    const-string/jumbo v1, "QC_RIL_OEM_HOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "QCRIL_EVT_HOOK_GET_SLOTS_STATUS_REQ failed w/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1714
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1713
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    return-object v4

    .line 1717
    :cond_29
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_37

    .line 1718
    const-string/jumbo v1, "QC_RIL_OEM_HOOK"

    const-string/jumbo v2, "QCRIL_EVT_HOOK_GET_SLOTS_STATUS_REQ failed w/ null result"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    return-object v4

    .line 1723
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "QCRIL_EVT_HOOK_GET_SLOTS_STATUS_REQ returned w/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1724
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    return-object v1
.end method

.method public qcRilGetTuneAway()Z
    .registers 9

    .prologue
    .line 1133
    const/4 v3, 0x0

    .line 1135
    .local v3, "tuneAway":Z
    const v5, 0x80006

    invoke-virtual {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1137
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_42

    .line 1138
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_38

    .line 1139
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 1140
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1141
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 1142
    .local v4, "tuneAwayValue":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "qcRilGetTuneAway: tuneAwayValue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1144
    const/4 v5, 0x1

    if-ne v4, v5, :cond_37

    .line 1145
    const/4 v3, 0x1

    .line 1153
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "response":[B
    .end local v4    # "tuneAwayValue":B
    :cond_37
    :goto_37
    return v3

    .line 1148
    :cond_38
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "qcRilGetTuneAway: Null Response"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 1151
    :cond_42
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "qcRilGetTuneAway: Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public qcRilGoCrash()Z
    .registers 8

    .prologue
    const v5, 0x89007

    .line 2345
    const/4 v3, 0x0

    .line 2346
    .local v3, "retval":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v2, v4, [B

    .line 2348
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2350
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    invoke-direct {p0, v1, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2352
    invoke-direct {p0, v5, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2354
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1a

    .line 2355
    const/4 v3, 0x1

    .line 2360
    :goto_19
    return v3

    .line 2357
    :cond_1a
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL go crash returned exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2358
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2357
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public qcRilGoDormant(Ljava/lang/String;)Z
    .registers 7
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 983
    const/4 v1, 0x0

    .line 984
    .local v1, "retval":Z
    const v2, 0x80003

    invoke-virtual {p0, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 986
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 988
    const/4 v1, 0x1

    .line 993
    :goto_d
    return v1

    .line 990
    :cond_e
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Go Dormant Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public qcRilGoDormant(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 999
    const/4 v1, 0x0

    .line 1000
    .local v1, "retval":Z
    const v2, 0x80003

    invoke-virtual {p0, v2, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(ILjava/lang/String;I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1002
    .local v0, "result":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 1004
    const/4 v1, 0x1

    .line 1009
    :goto_d
    return v1

    .line 1006
    :cond_e
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Go Dormant Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public qcRilInformShutDown(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "QCRIL Inform shutdown for phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1211
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$3;

    invoke-direct {v0, p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$3;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1217
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    const v1, 0x8000a

    invoke-virtual {p0, v1, v3, v0, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 1219
    const/4 v1, 0x1

    return v1
.end method

.method public qcRilPerformIncrManualScan(I)Z
    .registers 9
    .param p1, "phoneId"    # I

    .prologue
    const v5, 0x80012

    .line 1302
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1303
    const/4 v3, 0x0

    .line 1304
    .local v3, "retval":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v2, v4, [B

    .line 1306
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1308
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1, v5, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1310
    invoke-direct {p0, v5, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1313
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1c

    .line 1314
    const/4 v3, 0x1

    .line 1319
    :goto_1b
    return v3

    .line 1316
    :cond_1c
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL perform incr manual scan returned exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1317
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1316
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public qcRilSelectConfig(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "subMask"    # I

    .prologue
    .line 880
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSelectConfig(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public qcRilSelectConfig(Ljava/lang/String;II)Z
    .registers 12
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "subMask"    # I
    .param p3, "mbnType"    # I

    .prologue
    const v6, 0x80020

    const/4 v7, 0x0

    .line 895
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 896
    const/4 v3, 0x0

    .line 897
    .local v3, "payload":[B
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_79

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-gt v4, v5, :cond_79

    .line 899
    :try_start_16
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x4

    .line 900
    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    .line 899
    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 901
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 903
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    .line 902
    add-int/lit8 v4, v4, 0x5

    const v5, 0x80020

    invoke-direct {p0, v1, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 904
    int-to-byte v4, p2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 905
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 906
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_4c} :catch_71

    .line 912
    invoke-direct {p0, v6, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 913
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_94

    .line 914
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_SEL_CONFIG failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 915
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 914
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    return v7

    .line 907
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    :catch_71
    move-exception v2

    .line 908
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "unsupport ISO-8859-1"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 909
    return v7

    .line 919
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .local v3, "payload":[B
    :cond_79
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "select with incorrect config id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return v7

    .line 922
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .local v3, "payload":[B
    :cond_94
    const/4 v4, 0x1

    return v4
.end method

.method public qcRilSendApnInfo(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 13
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "isValid"    # I
    .param p4, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 1540
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1541
    const v4, 0x8002a

    .line 1542
    .local v4, "requestId":I
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$6;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook$6;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1548
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0xc

    .line 1549
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    .line 1548
    add-int/2addr v5, v6

    add-int/lit8 v1, v5, 0x2

    .line 1550
    .local v1, "payloadSize":I
    const/16 v5, 0x400

    if-le v1, v5, :cond_2a

    .line 1551
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    const-string/jumbo v6, "APN sent is larger than maximum buffer. Bail out"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    return-void

    .line 1554
    :cond_2a
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/2addr v5, v1

    new-array v3, v5, [B

    .line 1555
    .local v3, "request":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1556
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2, v4, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1557
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1558
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1559
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1560
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1561
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1562
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1563
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1564
    invoke-direct {p0, v4, v3, v0, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1565
    return-void
.end method

.method public qcRilSendDDSInfo(II)Z
    .registers 11
    .param p1, "dds"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1568
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1569
    const/4 v4, 0x0

    .line 1570
    .local v4, "retval":Z
    const v3, 0x80027

    .line 1571
    .local v3, "requestId":I
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    new-array v2, v5, [B

    .line 1572
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1574
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dds phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1575
    const/4 v5, 0x4

    invoke-direct {p0, v1, v3, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1576
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1578
    invoke-direct {p0, v3, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1579
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_39

    .line 1580
    const/4 v4, 0x1

    .line 1584
    :goto_38
    return v4

    .line 1582
    :cond_39
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL send dds sub info returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method public qcRilSendDDSInfo(III)Z
    .registers 12
    .param p1, "dds"    # I
    .param p2, "reason"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 1589
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1590
    const/4 v4, 0x0

    .line 1591
    .local v4, "retval":Z
    const v3, 0x80027

    .line 1592
    .local v3, "requestId":I
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x8

    new-array v2, v5, [B

    .line 1593
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1595
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dds phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1596
    const/16 v5, 0x8

    invoke-direct {p0, v1, v3, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1597
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1598
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1600
    invoke-direct {p0, v3, v2, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1601
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_48

    .line 1602
    const/4 v4, 0x1

    .line 1606
    :goto_47
    return v4

    .line 1604
    :cond_48
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL send dds sub info returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method

.method public qcRilSendDataEnableStatus(II)V
    .registers 8
    .param p1, "enable"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1480
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1481
    const v3, 0x80028

    .line 1482
    .local v3, "requestId":I
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$4;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$4;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1488
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x4

    new-array v2, v4, [B

    .line 1489
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1490
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x4

    invoke-direct {p0, v1, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1491
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1492
    invoke-direct {p0, v3, v2, v0, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1493
    return-void
.end method

.method public qcRilSendDataRoamingEnableStatus(II)V
    .registers 8
    .param p1, "enable"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1506
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1507
    const v3, 0x80029

    .line 1508
    .local v3, "requestId":I
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$5;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$5;-><init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V

    .line 1514
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x4

    new-array v2, v4, [B

    .line 1515
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1516
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x4

    invoke-direct {p0, v1, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1517
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1518
    invoke-direct {p0, v3, v2, v0, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1519
    return-void
.end method

.method public qcRilSendProtocolBufferMessage([BI)[B
    .registers 8
    .param p1, "protocolBuffer"    # [B
    .param p2, "phoneId"    # I

    .prologue
    .line 1096
    const/4 v1, 0x0

    .line 1097
    .local v1, "returnValue":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "qcRilSendProtoBufMessage: protocolBuffer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1099
    const v2, 0x80065

    invoke-virtual {p0, v2, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1101
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_44

    .line 1102
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "qcRilSendProtoBufMessage: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-object v1

    .line 1105
    :cond_44
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_52

    .line 1106
    const-string/jumbo v2, "QC_RIL_OEM_HOOK"

    const-string/jumbo v3, "QCRIL_EVT_HOOK_PROTOBUF_MSG returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    return-object v1

    .line 1109
    :cond_52
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    return-object v2
.end method

.method public qcRilSetCdmaSubSrcWithSpc(ILjava/lang/String;)Z
    .registers 13
    .param p1, "cdmaSubscription"    # I
    .param p2, "spc"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 1054
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1055
    const/4 v5, 0x0

    .line 1057
    .local v5, "retval":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "qcRilSetCdmaSubSrcWithSpc: Set Cdma Subscription to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x6

    if-gt v7, v8, :cond_9e

    .line 1061
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v3, v7, [B

    .line 1066
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1067
    .local v1, "buf":Ljava/nio/ByteBuffer;
    int-to-byte v7, p1

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1068
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1070
    const v7, 0x8000b

    invoke-virtual {p0, v7, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1072
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_81

    .line 1073
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_7a

    .line 1074
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    .line 1075
    .local v4, "result":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1076
    .local v2, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 1077
    .local v6, "succeed":B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "QCRIL Set Cdma Subscription Source Command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1078
    if-ne v6, v9, :cond_7b

    const-string/jumbo v7, "Succeed."

    .line 1077
    :goto_6c
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1079
    if-ne v6, v9, :cond_7f

    .line 1080
    const/4 v5, 0x1

    .line 1092
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    .end local v4    # "result":[B
    .end local v6    # "succeed":B
    :cond_7a
    :goto_7a
    return v5

    .line 1078
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v3    # "payload":[B
    .restart local v4    # "result":[B
    .restart local v6    # "succeed":B
    :cond_7b
    const-string/jumbo v7, "Failed."

    goto :goto_6c

    .line 1082
    :cond_7f
    const/4 v5, 0x0

    goto :goto_7a

    .line 1086
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v4    # "result":[B
    .end local v6    # "succeed":B
    :cond_81
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "QCRIL Set Cdma Subscription Source Command returned Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1087
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1086
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 1090
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "payload":[B
    :cond_9e
    const-string/jumbo v7, "QC_RIL_OEM_HOOK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "QCRIL Set Cdma Subscription Source Command incorrect SPC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a
.end method

.method public qcRilSetConfig(Ljava/lang/String;)Z
    .registers 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 542
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "subMask"    # I

    .prologue
    .line 557
    invoke-virtual {p0, p1, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "subMask"    # I

    .prologue
    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public qcRilSetConfig(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 13
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "subMask"    # I
    .param p4, "mbnType"    # I

    .prologue
    const v6, 0x80015

    const/4 v7, 0x0

    .line 493
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 494
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-gt v4, v5, :cond_8c

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 494
    if-eqz v4, :cond_8c

    .line 496
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x4

    .line 497
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 496
    add-int/2addr v4, v5

    .line 497
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 496
    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 498
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 504
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 503
    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 505
    int-to-byte v4, p3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 506
    invoke-virtual {v1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 507
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 508
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 510
    :try_start_52
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_5c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_52 .. :try_end_5c} :catch_84

    .line 515
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 517
    invoke-direct {p0, v6, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 518
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_a7

    .line 519
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_SET_CONFIG failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 520
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 519
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return v7

    .line 511
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_84
    move-exception v2

    .line 512
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "unsupport ISO-8859-1"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 513
    return v7

    .line 524
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "payload":[B
    :cond_8c
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set with incorrect config id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return v7

    .line 528
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local v3    # "payload":[B
    :cond_a7
    const/4 v4, 0x1

    return v4
.end method

.method public qcRilSetFieldTestMode(IBI)Z
    .registers 11
    .param p1, "phoneId"    # I
    .param p2, "ratType"    # B
    .param p3, "enable"    # I

    .prologue
    const v6, 0x80013

    .line 1236
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1237
    const/4 v3, 0x0

    .line 1239
    .local v3, "retval":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x8

    new-array v2, v4, [B

    .line 1240
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1242
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1243
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1244
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ratType ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1246
    invoke-direct {p0, v6, v2, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1248
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_47

    .line 1249
    const/4 v3, 0x1

    .line 1254
    :goto_46
    return v3

    .line 1251
    :cond_47
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL enable engineer mode cmd returned exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1252
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1251
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method public qcRilSetLteTuneaway(ZI)Z
    .registers 12
    .param p1, "enable"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 1447
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1448
    const/4 v4, 0x0

    .line 1449
    .local v4, "retval":Z
    if-eqz p1, :cond_3c

    const/4 v5, 0x1

    .line 1450
    .local v5, "tuneaway":B
    :goto_7
    const v3, 0x8002b

    .line 1451
    .local v3, "requestId":I
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v6, v6, 0x1

    new-array v2, v6, [B

    .line 1452
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1455
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "qcRilSetLteTuneaway enable :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1456
    const/4 v6, 0x1

    invoke-direct {p0, v1, v3, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1457
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1459
    invoke-direct {p0, v3, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1460
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3e

    .line 1461
    const/4 v4, 0x1

    .line 1466
    :goto_3b
    return v4

    .line 1449
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reqBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "request":[B
    .end local v3    # "requestId":I
    .end local v5    # "tuneaway":B
    :cond_3c
    const/4 v5, 0x0

    .restart local v5    # "tuneaway":B
    goto :goto_7

    .line 1463
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "reqBuffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "request":[B
    .restart local v3    # "requestId":I
    :cond_3e
    const-string/jumbo v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "QCRIL set lte tune away returned exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method public qcRilSetPreferredNetworkAcqOrder(II)Z
    .registers 11
    .param p1, "acqOrder"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1380
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1381
    const/4 v4, 0x0

    .line 1382
    .local v4, "retval":Z
    const v3, 0x8001b

    .line 1383
    .local v3, "requestId":I
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    new-array v2, v5, [B

    .line 1384
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1387
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "acq order: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1388
    const/4 v5, 0x4

    invoke-direct {p0, v1, v3, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1389
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1391
    invoke-direct {p0, v3, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1392
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_39

    .line 1393
    const/4 v4, 0x1

    .line 1398
    :goto_38
    return v4

    .line 1395
    :cond_39
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL set acq order cmd returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method public qcRilSetPreferredNetworkBandPref(II)Z
    .registers 11
    .param p1, "bandPref"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1642
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1643
    const/4 v4, 0x0

    .line 1644
    .local v4, "retval":Z
    const v3, 0x80025

    .line 1645
    .local v3, "requestId":I
    iget v5, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v5, v5, 0x4

    new-array v2, v5, [B

    .line 1646
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1649
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "band pref: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1650
    const/4 v5, 0x4

    invoke-direct {p0, v1, v3, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1651
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1653
    invoke-direct {p0, v3, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1654
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_39

    .line 1655
    const/4 v4, 0x1

    .line 1660
    :goto_38
    return v4

    .line 1657
    :cond_39
    const-string/jumbo v5, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "QCRIL set band pref cmd returned exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method public qcRilSetPrioritySub(I)Z
    .registers 8
    .param p1, "priorityIndex"    # I

    .prologue
    .line 1036
    const/4 v2, 0x0

    .line 1037
    .local v2, "retval":Z
    int-to-byte v0, p1

    .line 1039
    .local v0, "payload":B
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetPrioritySub: Outgoing priority subscription is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const v3, 0x80007

    invoke-virtual {p0, v3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IB)Landroid/os/AsyncResult;

    move-result-object v1

    .line 1042
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_29

    .line 1043
    const/4 v2, 0x1

    .line 1048
    :goto_28
    return v2

    .line 1045
    :cond_29
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "QCRIL set priority sub Command returned Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1046
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1045
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public qcRilSetPrioritySubscription(I)Z
    .registers 8
    .param p1, "priorityIndex"    # I

    .prologue
    .line 1157
    const/4 v2, 0x0

    .line 1158
    .local v2, "returnValue":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "qcRilSetPrioritySubscription: PrioritySubscription to be set to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1161
    int-to-byte v1, p1

    .line 1162
    .local v1, "payload":B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "qcRilSetPrioritySubscription: PrioritySubscription payload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1164
    const v3, 0x80007

    invoke-virtual {p0, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IB)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1166
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3d

    .line 1167
    const/4 v2, 0x1

    .line 1171
    :goto_3c
    return v2

    .line 1169
    :cond_3d
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetPrioritySubscription: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public qcRilSetTuneAway(Z)Z
    .registers 8
    .param p1, "tuneAway"    # Z

    .prologue
    .line 1113
    const/4 v2, 0x0

    .line 1114
    .local v2, "returnValue":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "qcRilSetTuneAway: tuneAway Value to be set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1116
    const/4 v1, 0x0

    .line 1117
    .local v1, "payload":B
    if-eqz p1, :cond_1c

    .line 1118
    const/4 v1, 0x1

    .line 1120
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "qcRilSetTuneAway: tuneAway payload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->logv(Ljava/lang/String;)V

    .line 1122
    const v3, 0x80005

    invoke-virtual {p0, v3, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IB)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1124
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_40

    .line 1125
    const/4 v2, 0x1

    .line 1129
    :goto_3f
    return v2

    .line 1127
    :cond_40
    const-string/jumbo v3, "QC_RIL_OEM_HOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "qcRilSetTuneAway: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method public qcRilValidateConfig(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "configId"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 768
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 769
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7c

    if-le v4, v5, :cond_1c

    .line 770
    :cond_12
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "invalid config id"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return v7

    .line 773
    :cond_1c
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-array v3, v4, [B

    .line 774
    .local v3, "payload":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 776
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    .line 775
    const v5, 0x8002e

    invoke-direct {p0, v1, v5, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 777
    int-to-byte v4, p2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 779
    :try_start_3b
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3b .. :try_end_45} :catch_70

    .line 784
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 786
    const v4, 0x80021

    invoke-direct {p0, v4, v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 787
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_78

    .line 788
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL_EVT_HOOK_VALIDATE_CONFIG failed w/ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 789
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 788
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return v7

    .line 780
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catch_70
    move-exception v2

    .line 781
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "unsupport ISO-8859-1"

    invoke-direct {p0, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 782
    return v7

    .line 792
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_78
    const/4 v4, 0x1

    return v4
.end method

.method public qcrilSetBuiltInPLMNList([BI)Z
    .registers 10
    .param p1, "payload"    # [B
    .param p2, "phoneId"    # I

    .prologue
    const v6, 0x80011

    .line 1344
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1345
    const/4 v3, 0x0

    .line 1346
    .local v3, "retval":Z
    if-nez p1, :cond_14

    .line 1347
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    const-string/jumbo v5, "payload is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    const/4 v4, 0x0

    return v4

    .line 1351
    :cond_14
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    array-length v5, p1

    add-int/2addr v4, v5

    new-array v2, v4, [B

    .line 1352
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1355
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v4, p1

    .line 1354
    invoke-direct {p0, v1, v6, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1356
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1358
    invoke-direct {p0, v6, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1360
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2f

    .line 1361
    const/4 v3, 0x1

    .line 1366
    :goto_2e
    return v3

    .line 1363
    :cond_2f
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QCRIL set builtin PLMN list returned exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1364
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1363
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public registerForExtendedDbmIntl(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1848
    return-void
.end method

.method public registerForFieldTestData(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1838
    return-void
.end method

.method public sendQcRilHookMsg(I)Landroid/os/AsyncResult;
    .registers 5
    .param p1, "requestId"    # I

    .prologue
    .line 1728
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1729
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    new-array v1, v2, [B

    .line 1730
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1732
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1734
    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(IB)Landroid/os/AsyncResult;
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "payload"    # B

    .prologue
    .line 1738
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(IBI)Landroid/os/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public sendQcRilHookMsg(IBI)Landroid/os/AsyncResult;
    .registers 7
    .param p1, "requestId"    # I
    .param p2, "payload"    # B
    .param p3, "phoneId"    # I

    .prologue
    .line 1741
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1742
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [B

    .line 1743
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1745
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1746
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1748
    invoke-direct {p0, p1, v1, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(II)Landroid/os/AsyncResult;
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "payload"    # I

    .prologue
    .line 1766
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1767
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 1768
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1770
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1771
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1773
    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;
    .registers 7
    .param p1, "requestId"    # I
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 1777
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1778
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 1779
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1781
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1782
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1784
    invoke-direct {p0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(ILjava/lang/String;I)Landroid/os/AsyncResult;
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "payload"    # Ljava/lang/String;
    .param p3, "SubId"    # I

    .prologue
    .line 1790
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 1791
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1793
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1794
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1796
    invoke-direct {p0, p1, v1, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B

    .prologue
    .line 1752
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    return-object v0
.end method

.method public sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "phoneId"    # I

    .prologue
    .line 1755
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1756
    iget v2, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    array-length v3, p2

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 1757
    .local v1, "request":[B
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1759
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v2, p2

    invoke-direct {p0, v0, p1, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1760
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1762
    invoke-direct {p0, p1, v1, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/OemHookCallback;

    .prologue
    .line 1801
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 1802
    return-void
.end method

.method public sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V
    .registers 9
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B
    .param p3, "oemHookCb"    # Lcom/qualcomm/qcrilhook/OemHookCallback;
    .param p4, "phoneId"    # I

    .prologue
    .line 1806
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1807
    const/4 v0, 0x0

    .line 1808
    .local v0, "payloadLength":I
    if-eqz p2, :cond_7

    .line 1809
    array-length v0, p2

    .line 1812
    :cond_7
    iget v3, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/2addr v3, v0

    new-array v2, v3, [B

    .line 1813
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1815
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1, p1, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1816
    if-eqz p2, :cond_18

    .line 1817
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1819
    :cond_18
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsgAsync(I[BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 1820
    return-void
.end method

.method public setFactoryModeModemGPIO(II)Z
    .registers 11
    .param p1, "status"    # I
    .param p2, "num"    # I

    .prologue
    const v7, 0x89008

    .line 2365
    const/4 v3, 0x0

    .line 2366
    .local v3, "retval":Z
    iget v4, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v4, v4, 0x8

    new-array v2, v4, [B

    .line 2368
    .local v2, "request":[B
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2370
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFactoryModeModemGPIO status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", GPIO num:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    const/16 v4, 0x8

    invoke-direct {p0, v1, v7, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 2372
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2373
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2375
    invoke-direct {p0, v7, v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v0

    .line 2377
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_48

    .line 2378
    const/4 v3, 0x1

    .line 2383
    :goto_47
    return v3

    .line 2380
    :cond_48
    const-string/jumbo v4, "QC_RIL_OEM_HOOK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Set Factory Mode Modem GPIO returned exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2381
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2380
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method

.method public setLocalCallHold(IZ)Z
    .registers 12
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1610
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->validateInternalState()V

    .line 1611
    const/4 v5, 0x0

    .line 1612
    .local v5, "retval":Z
    if-eqz p2, :cond_4d

    const/4 v1, 0x1

    .line 1613
    .local v1, "lchStatus":B
    :goto_7
    const v4, 0x81b58

    .line 1614
    .local v4, "requestId":I
    iget v6, p0, Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v6, v6, 0x1

    new-array v3, v6, [B

    .line 1615
    .local v3, "request":[B
    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1617
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setLocalCallHold: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1618
    const/4 v6, 0x1

    invoke-direct {p0, v2, v4, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 1619
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1621
    invoke-direct {p0, v4, v3, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1622
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_4f

    .line 1623
    const-string/jumbo v6, "setLocalCallHold success"

    invoke-direct {p0, v6}, Lcom/qualcomm/qcrilhook/QcRilHook;->logd(Ljava/lang/String;)V

    .line 1624
    const/4 v5, 0x1

    .line 1628
    :goto_4c
    return v5

    .line 1612
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "lchStatus":B
    .end local v2    # "reqBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "request":[B
    .end local v4    # "requestId":I
    :cond_4d
    const/4 v1, 0x0

    .restart local v1    # "lchStatus":B
    goto :goto_7

    .line 1626
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v2    # "reqBuffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "request":[B
    .restart local v4    # "requestId":I
    :cond_4f
    const-string/jumbo v6, "QC_RIL_OEM_HOOK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "QCRIL setLocalCallHold returned exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method public unregisterForExtendedDbmIntl(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1853
    return-void
.end method

.method public unregisterForFieldTestData(Landroid/os/Handler;)V
    .registers 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1843
    return-void
.end method
