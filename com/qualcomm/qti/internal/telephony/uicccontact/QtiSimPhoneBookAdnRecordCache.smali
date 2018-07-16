.class public final Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;
.super Landroid/os/Handler;
.source "QtiSimPhoneBookAdnRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final EVENT_INIT_ADN_DONE:I = 0x1

.field static final EVENT_LOAD_ADN_RECORD_DONE:I = 0x3

.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x4

.field static final EVENT_QUERY_ADN_RECORD_DONE:I = 0x2

.field static final EVENT_SIM_REFRESH:I = 0x6

.field static final EVENT_UPDATE_ADN_RECORD_DONE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "QtiSimPhoneBookAdnRecordCache"


# instance fields
.field extRecList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private mAddNumCount:I

.field private mAdnCount:I

.field mAdnLoadingWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mAdnUpdatingWaiter:Landroid/os/Message;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field private mCurrentAdnEventState:I

.field private mEmailCount:I

.field private mIsQueryFinished:Z

.field private mLock:Ljava/lang/Object;

.field private mMaxAnrLen:I

.field private mMaxEmailLen:I

.field private mMaxNameLen:I

.field private mMaxNumberLen:I

.field protected mPhoneId:I

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mRecCount:I

.field private mRefreshAdnCache:Z

.field private mSimPbRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mValidAddNumCount:I

.field private mValidAdnCount:I

.field private mValidEmailCount:I

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;Ljava/lang/String;)V
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    .line 50
    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 51
    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 52
    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 53
    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 54
    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    .line 55
    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNameLen:I

    .line 56
    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNumberLen:I

    .line 57
    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxEmailLen:I

    .line 58
    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxAnrLen:I

    .line 59
    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    .line 62
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    .line 69
    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    .line 72
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->extRecList:Landroid/util/SparseArray;

    .line 76
    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCurrentAdnEventState:I

    .line 79
    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mIsQueryFinished:Z

    .line 290
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache$1;-><init>(Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    .line 94
    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    .line 95
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 98
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p0, v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForAdnInitDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void
.end method

.method private clearUpdatingWriter()V
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    const-string/jumbo v1, "QtiSimPhoneBookAdnRecordCache reset"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    .line 136
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 544
    const-string/jumbo v0, "QtiSimPhoneBookAdnRecordCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method private notifyAndClearWaiters()V
    .registers 6

    .prologue
    .line 148
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    if-nez v3, :cond_5

    .line 149
    return-void

    .line 152
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_c
    if-ge v0, v2, :cond_48

    .line 153
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 155
    .local v1, "response":Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyAndClearWaiters i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 158
    if-eqz v1, :cond_45

    .line 159
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    iput-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 160
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 152
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 164
    .end local v1    # "response":Landroid/os/Message;
    :cond_48
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 165
    return-void
.end method

.method private refreshAdnCache()V
    .registers 2

    .prologue
    .line 554
    const-string/jumbo v0, "refreshAdnCache"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 556
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->queryAdnRecord()V

    .line 557
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 139
    if-eqz p1, :cond_10

    .line 140
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 142
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10
    return-void
.end method


# virtual methods
.method public getAdnCount()I
    .registers 2

    .prologue
    .line 496
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    return v0
.end method

.method public getAdnEventState()I
    .registers 3

    .prologue
    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getAdnEventState currentAdnEventState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCurrentAdnEventState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 538
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCurrentAdnEventState:I

    return v0
.end method

.method public getAnrCount()I
    .registers 2

    .prologue
    .line 512
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAddNumCount:I

    return v0
.end method

.method public getEmailCount()I
    .registers 2

    .prologue
    .line 504
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    return v0
.end method

.method public getMaxAnrLen()I
    .registers 2

    .prologue
    .line 532
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxAnrLen:I

    return v0
.end method

.method public getMaxEmailLen()I
    .registers 2

    .prologue
    .line 528
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxEmailLen:I

    return v0
.end method

.method public getMaxNameLen()I
    .registers 2

    .prologue
    .line 520
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNameLen:I

    return v0
.end method

.method public getMaxNumberLen()I
    .registers 2

    .prologue
    .line 524
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNumberLen:I

    return v0
.end method

.method public getUsedAdnCount()I
    .registers 2

    .prologue
    .line 500
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    return v0
.end method

.method public getUsedAnrCount()I
    .registers 2

    .prologue
    .line 516
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    return v0
.end method

.method public getUsedEmailCount()I
    .registers 2

    .prologue
    .line 508
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 312
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 315
    .local v12, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_432

    .line 493
    :cond_d
    :goto_d
    return-void

    .line 317
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v12    # "ar":Landroid/os/AsyncResult;
    check-cast v12, Landroid/os/AsyncResult;

    .line 319
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    if-ne v2, v3, :cond_d

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initialized ADN done mPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 323
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4c

    .line 326
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCurrentAdnEventState:I

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->invalidateAdnCache()V

    goto :goto_d

    .line 330
    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Init ADN done Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    goto :goto_d

    .line 336
    :pswitch_68
    const-string/jumbo v2, "Querying ADN record done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 337
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_c4

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 339
    :try_start_79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_b3

    monitor-exit v3

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "response$iterator":Ljava/util/Iterator;
    :goto_89
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Message;

    .line 343
    .local v20, "response":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Query adn record failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_89

    .line 338
    .end local v20    # "response":Landroid/os/Message;
    .end local v21    # "response$iterator":Ljava/util/Iterator;
    :catchall_b3
    move-exception v2

    monitor-exit v3

    throw v2

    .line 345
    .restart local v21    # "response$iterator":Ljava/util/Iterator;
    :cond_b6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 347
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mIsQueryFinished:Z

    goto/16 :goto_d

    .line 351
    .end local v21    # "response$iterator":Ljava/util/Iterator;
    :cond_c4
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    .line 352
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 353
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x2

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 354
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x3

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 355
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x4

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 356
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x5

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    .line 357
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x6

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNameLen:I

    .line 358
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x7

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNumberLen:I

    .line 359
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/16 v3, 0x8

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxEmailLen:I

    .line 360
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/16 v3, 0x9

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxAnrLen:I

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Max ADN count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 362
    const-string/jumbo v3, ", Valid ADN count is: "

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 362
    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 363
    const-string/jumbo v3, ", Email count is: "

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 363
    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 364
    const-string/jumbo v3, ", Valid email count is: "

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 364
    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 365
    const-string/jumbo v3, ", Add number count is: "

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 365
    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 366
    const-string/jumbo v3, ", Valid add number count is: "

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 366
    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 367
    const-string/jumbo v3, ", Max name length is: "

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 367
    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNameLen:I

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 368
    const-string/jumbo v3, ", Max number length is: "

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 368
    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxNumberLen:I

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 369
    const-string/jumbo v3, ", Max email length is: "

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 369
    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxEmailLen:I

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 370
    const-string/jumbo v3, ", Valid anr length is: "

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 370
    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mMaxAnrLen:I

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-eqz v2, :cond_1e8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-ne v2, v3, :cond_d

    .line 373
    :cond_1e8
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_d

    .line 379
    :pswitch_1f6
    iget-object v13, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Landroid/os/Bundle;

    .line 380
    .local v13, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "phone"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 381
    .local v17, "phoneId":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_d

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Loading ADN record done mPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 385
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_d

    .line 390
    const-string/jumbo v2, "adn_records"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, [Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;

    .line 393
    .local v9, "AdnRecordsGroup":[Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_234
    array-length v2, v9

    if-ge v15, v2, :cond_277

    .line 394
    aget-object v2, v9, v15

    if-eqz v2, :cond_274

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 396
    aget-object v3, v9, v15

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getRecordIndex()I

    move-result v4

    .line 397
    aget-object v3, v9, v15

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v5

    .line 398
    aget-object v3, v9, v15

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 399
    aget-object v3, v9, v15

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v7

    .line 400
    aget-object v3, v9, v15

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->getAdNumbers()[Ljava/lang/String;

    move-result-object v8

    .line 395
    const/4 v3, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    .line 393
    :cond_274
    add-int/lit8 v15, v15, 0x1

    goto :goto_234

    .line 405
    :cond_277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EVENT_LOAD_ADN_RECORD_DONE mRecCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-ne v2, v3, :cond_d

    .line 408
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_d

    .line 413
    .end local v9    # "AdnRecordsGroup":[Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v15    # "i":I
    .end local v17    # "phoneId":I
    :pswitch_2ac
    const-string/jumbo v2, "Loading all ADN records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 415
    :try_start_2b9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_2c0
    .catchall {:try_start_2b9 .. :try_end_2c0} :catchall_2cb

    monitor-exit v3

    .line 418
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mIsQueryFinished:Z

    .line 420
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->notifyAndClearWaiters()V

    goto/16 :goto_d

    .line 414
    :catchall_2cb
    move-exception v2

    monitor-exit v3

    throw v2

    .line 424
    :pswitch_2ce
    const-string/jumbo v2, "Update ADN record done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 425
    const/4 v14, 0x0

    .line 427
    .local v14, "e":Ljava/lang/Exception;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3d2

    .line 428
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 429
    .local v16, "index":I
    iget-object v10, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 430
    .local v10, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v18, v2, v3

    .line 432
    .local v18, "recordIndex":I
    if-nez v16, :cond_33b

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Record number for added ADN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 435
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordNumber(I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 466
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "index":I
    .end local v18    # "recordIndex":I
    :goto_31f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    if-eqz v2, :cond_d

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 469
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    goto/16 :goto_d

    .line 438
    .restart local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v14    # "e":Ljava/lang/Exception;
    .restart local v16    # "index":I
    .restart local v18    # "recordIndex":I
    :cond_33b
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_38b

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v16, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v11

    .line 441
    .local v11, "adnRecordIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Record number for deleted ADN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 442
    move/from16 v0, v18

    if-ne v0, v11, :cond_382

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v16, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 444
    move-object/from16 v0, p0

    iget v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    goto :goto_31f

    .line 446
    :cond_382
    new-instance v14, Ljava/lang/RuntimeException;

    .line 447
    .end local v14    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "The index for deleted ADN record did not match"

    .line 446
    invoke-direct {v14, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v14, "e":Ljava/lang/Exception;
    goto :goto_31f

    .line 451
    .end local v11    # "adnRecordIndex":I
    .local v14, "e":Ljava/lang/Exception;
    :cond_38b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v16, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v11

    .line 452
    .restart local v11    # "adnRecordIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Record number for changed ADN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 453
    move/from16 v0, v18

    if-ne v0, v11, :cond_3c8

    .line 454
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordNumber(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v16, -0x1

    invoke-virtual {v2, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_31f

    .line 457
    :cond_3c8
    new-instance v14, Ljava/lang/RuntimeException;

    .line 458
    .end local v14    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "The index for changed ADN record did not match"

    .line 457
    invoke-direct {v14, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v14, "e":Ljava/lang/Exception;
    goto/16 :goto_31f

    .line 462
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "adnRecordIndex":I
    .end local v16    # "index":I
    .end local v18    # "recordIndex":I
    .local v14, "e":Ljava/lang/Exception;
    :cond_3d2
    new-instance v14, Ljava/lang/RuntimeException;

    .end local v14    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Update adn record failed"

    .line 463
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 462
    invoke-direct {v14, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .local v14, "e":Ljava/lang/Exception;
    goto/16 :goto_31f

    .line 474
    .end local v14    # "e":Ljava/lang/Exception;
    :pswitch_3de
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v12    # "ar":Landroid/os/AsyncResult;
    check-cast v12, Landroid/os/AsyncResult;

    .line 475
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v2, "SIM REFRESH occurred"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 476
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_414

    .line 477
    iget-object v0, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 478
    .local v19, "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    if-nez v19, :cond_402

    .line 479
    const-string/jumbo v2, "IccRefreshResponse received is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 483
    :cond_402
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-eqz v2, :cond_40f

    .line 484
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 485
    :cond_40f
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->invalidateAdnCache()V

    goto/16 :goto_d

    .line 488
    .end local v19    # "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SIM refresh Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 315
    nop

    :pswitch_data_432
    .packed-switch 0x1
        :pswitch_e
        :pswitch_68
        :pswitch_1f6
        :pswitch_2ac
        :pswitch_2ce
        :pswitch_3de
    .end packed-switch
.end method

.method public invalidateAdnCache()V
    .registers 2

    .prologue
    .line 549
    const-string/jumbo v0, "invalidateAdnCache"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 551
    return-void
.end method

.method public queryAdnRecord()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 168
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    .line 169
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    .line 170
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 171
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 172
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 175
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mIsQueryFinished:Z

    .line 177
    const-string/jumbo v1, "start to queryAdnRecord"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 180
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 181
    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    .line 179
    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getAdnRecord(Landroid/os/Message;I)V

    .line 182
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForAdnRecordsInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 185
    :try_start_26
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_31

    .line 190
    :goto_2b
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unregisterForAdnRecordsInfo(Landroid/os/Handler;)V

    .line 191
    return-void

    .line 186
    :catch_31
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "QtiSimPhoneBookAdnRecordCache"

    const-string/jumbo v2, "Interrupted Exception in queryAdnRecord"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public requestLoadAllAdnLike(Landroid/os/Message;)V
    .registers 4
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 197
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_9
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_c
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 202
    const-string/jumbo v0, "ADN cache has already filled in"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 203
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    if-eqz v0, :cond_26

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 205
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->refreshAdnCache()V
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2a

    :goto_24
    monitor-exit v1

    .line 210
    return-void

    .line 207
    :cond_26
    :try_start_26
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->notifyAndClearWaiters()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_24

    .line 200
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 213
    :cond_2d
    :try_start_2d
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->queryAdnRecord()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    monitor-exit v1

    .line 215
    return-void
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 106
    const-string/jumbo v2, "reset()"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 108
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->clearUpdatingWriter()V

    .line 110
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 111
    iput v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRecCount:I

    .line 112
    iput-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 115
    const/4 v2, -0x1

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mCurrentAdnEventState:I

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsQueryFinished = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mIsQueryFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 119
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mIsQueryFinished:Z

    if-nez v2, :cond_65

    .line 120
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 121
    :try_start_3b
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_5a

    monitor-exit v3

    .line 124
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "response$iterator":Ljava/util/Iterator;
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 125
    .local v0, "response":Landroid/os/Message;
    const-string/jumbo v2, "Query adn record failed"

    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_47

    .line 120
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "response$iterator":Ljava/util/Iterator;
    :catchall_5a
    move-exception v2

    monitor-exit v3

    throw v2

    .line 127
    .restart local v1    # "response$iterator":Ljava/util/Iterator;
    :cond_5d
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 128
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mIsQueryFinished:Z

    .line 131
    .end local v1    # "response$iterator":Ljava/util/Iterator;
    :cond_65
    return-void
.end method

.method public updateSimPbAdnBySearch(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V
    .registers 13
    .param p1, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 218
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    .line 220
    .local v3, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 221
    :try_start_6
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_28

    .line 222
    const-string/jumbo v6, "ADN cache has already filled in"

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 223
    iget-boolean v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    if-eqz v6, :cond_1e

    .line 224
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 225
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->refreshAdnCache()V
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_2c

    :cond_1e
    :goto_1e
    monitor-exit v7

    .line 232
    if-nez v3, :cond_2f

    .line 233
    const-string/jumbo v6, "Sim PhoneBook Adn list not exist"

    invoke-direct {p0, p3, v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 234
    return-void

    .line 228
    :cond_28
    :try_start_28
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->queryAdnRecord()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_1e

    .line 220
    :catchall_2c
    move-exception v6

    monitor-exit v7

    throw v6

    .line 237
    :cond_2f
    const/4 v1, -0x1

    .line 238
    .local v1, "index":I
    const/4 v0, 0x1

    .line 239
    .local v0, "count":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5b

    .line 241
    const/4 v1, 0x0

    .line 252
    :cond_40
    :goto_40
    const/4 v6, -0x1

    if-ne v1, v6, :cond_76

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sim PhoneBook Adn record don\'t exist for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p3, v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 254
    return-void

    .line 244
    :cond_5b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 246
    move v1, v0

    .line 247
    goto :goto_40

    .line 249
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 257
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_76
    if-nez v1, :cond_85

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mValidAdnCount:I

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnCount:I

    if-ne v6, v7, :cond_85

    .line 258
    const-string/jumbo v6, "Sim PhoneBook Adn record is full"

    invoke-direct {p0, p3, v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 259
    return-void

    .line 262
    :cond_85
    if-nez v1, :cond_c8

    const/4 v4, 0x0

    .line 264
    .local v4, "recordIndex":I
    :goto_88
    new-instance v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;

    invoke-direct {v5}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;-><init>()V

    .line 265
    .local v5, "updateAdn":Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;
    iput v4, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mRecordIndex:I

    .line 266
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 267
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mNumber:Ljava/lang/String;

    .line 268
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_ac

    .line 269
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    .line 270
    iget-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    array-length v6, v6

    iput v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmailCount:I

    .line 272
    :cond_ac
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_bd

    .line 273
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    .line 274
    iget-object v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    array-length v6, v6

    iput v6, v5, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumCount:I

    .line 277
    :cond_bd
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    if-eqz v6, :cond_d5

    .line 278
    const-string/jumbo v6, "Have pending update for Sim PhoneBook Adn"

    invoke-direct {p0, p3, v6}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 279
    return-void

    .line 262
    .end local v4    # "recordIndex":I
    .end local v5    # "updateAdn":Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;
    :cond_c8
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v4

    .restart local v4    # "recordIndex":I
    goto :goto_88

    .line 282
    .restart local v5    # "updateAdn":Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;
    :cond_d5
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    .line 284
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 286
    const/4 v7, 0x5

    invoke-virtual {p0, v7, v1, v8, p2}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 287
    iget v8, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->mPhoneId:I

    .line 284
    invoke-virtual {v6, v5, v7, v8}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->updateAdnRecord(Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;Landroid/os/Message;I)V

    .line 288
    return-void
.end method
