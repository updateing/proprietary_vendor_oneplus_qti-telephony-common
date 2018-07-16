.class public Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "QtiIccPhoneBookInterfaceManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "QtiIccPhoneBookInterfaceManager"


# instance fields
.field private mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 54
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 55
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-nez v0, :cond_1e

    .line 56
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 57
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iget-object v3, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 56
    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;-><init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 60
    :cond_1e
    return-void
.end method

.method private isSimPhoneBookEnabled()Z
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    const v1, 0x112009b

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 65
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_15
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 73
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    :cond_9
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v0, :cond_12

    .line 77
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->reset()V

    .line 80
    :cond_12
    return-void
.end method

.method public getAdnEventState()I
    .registers 2

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 217
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v0, :cond_11

    .line 218
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getAdnEventState()I

    move-result v0

    return v0

    .line 220
    :cond_11
    const-string/jumbo v0, "mAdnCache is NULL when getAdnRecordsCapacity."

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 223
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public getAdnRecordsCapacity()[I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    const/16 v1, 0xa

    new-array v0, v1, [I

    .line 187
    .local v0, "capacity":[I
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 188
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v1, :cond_100

    .line 189
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getAdnCount()I

    move-result v1

    aput v1, v0, v3

    .line 190
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedAdnCount()I

    move-result v1

    aput v1, v0, v4

    .line 191
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getEmailCount()I

    move-result v1

    aput v1, v0, v5

    .line 192
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedEmailCount()I

    move-result v1

    aput v1, v0, v6

    .line 193
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getAnrCount()I

    move-result v1

    aput v1, v0, v7

    .line 194
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedAnrCount()I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 195
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxNameLen()I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 196
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxNumberLen()I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 197
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxEmailLen()I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 198
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxAnrLen()I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 203
    :cond_6a
    :goto_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAdnRecordsCapacity: max adn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    const-string/jumbo v2, ", used adn="

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    aget v2, v0, v4

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    const-string/jumbo v2, ", max email="

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    aget v2, v0, v5

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    const-string/jumbo v2, ", used email="

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    aget v2, v0, v6

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    const-string/jumbo v2, ", max anr="

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    aget v2, v0, v7

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    const-string/jumbo v2, ", used anr="

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    const/4 v2, 0x5

    aget v2, v0, v2

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    const-string/jumbo v2, ", max name length ="

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    const/4 v2, 0x6

    aget v2, v0, v2

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    const-string/jumbo v2, ", max number length ="

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    const/4 v2, 0x7

    aget v2, v0, v2

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    const-string/jumbo v2, ", max email length ="

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    const/16 v2, 0x8

    aget v2, v0, v2

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    const-string/jumbo v2, ", max anr length ="

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    const/16 v2, 0x9

    aget v2, v0, v2

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 210
    return-object v0

    .line 200
    :cond_100
    const-string/jumbo v1, "mAdnCache is NULL when getAdnRecordsCapacity."

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_6a
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .registers 7
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 86
    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    .line 85
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_18

    .line 88
    new-instance v2, Ljava/lang/SecurityException;

    .line 89
    const-string/jumbo v3, "Requires android.permission.READ_CONTACTS permission"

    .line 88
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_18
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAdnRecordsInEF: efid=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 96
    :try_start_3e
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->checkThread()V

    .line 97
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 98
    .local v1, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 100
    .local v0, "response":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAdnRecordsInEf response = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 103
    const/16 v2, 0x4f30

    if-eq p1, v2, :cond_73

    const/16 v2, 0x6f3a

    if-ne p1, v2, :cond_ae

    .line 104
    :cond_73
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v2, :cond_a4

    .line 105
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v2, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->requestLoadAllAdnLike(Landroid/os/Message;)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_7f
    .catchall {:try_start_3e .. :try_end_7f} :catchall_ab

    :goto_7f
    monitor-exit v3

    .line 121
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v2, :cond_c8

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAdnRecordsInEF: mRecords size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 127
    :goto_a1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    return-object v2

    .line 108
    :cond_a4
    :try_start_a4
    const-string/jumbo v2, "Failure while trying to load from SIM due to uninit  sim pb adncache"

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_aa
    .catchall {:try_start_a4 .. :try_end_aa} :catchall_ab

    goto :goto_7f

    .line 95
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_ab
    move-exception v2

    monitor-exit v3

    throw v2

    .line 111
    .restart local v0    # "response":Landroid/os/Message;
    .restart local v1    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_ae
    :try_start_ae
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_c1

    .line 112
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 113
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 112
    invoke-virtual {v2, p1, v4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 114
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_7f

    .line 116
    :cond_c1
    const-string/jumbo v2, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_c7
    .catchall {:try_start_ae .. :try_end_c7} :catchall_ab

    goto :goto_7f

    .line 124
    :cond_c8
    const-string/jumbo v2, "getAdnRecordsInEF: mRecords is null"

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_a1
.end method

.method public updateAdnRecordsWithContentValuesInEfBySearch(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 28
    .param p1, "efid"    # I
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "pin2"    # Ljava/lang/String;

    .prologue
    .line 134
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 135
    const-string/jumbo v5, "android.permission.WRITE_CONTACTS"

    .line 134
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1a

    .line 136
    new-instance v4, Ljava/lang/SecurityException;

    const-string/jumbo v5, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_1a
    const-string/jumbo v4, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 140
    .local v21, "oldTag":Ljava/lang/String;
    const-string/jumbo v4, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 141
    .local v15, "newTag":Ljava/lang/String;
    const-string/jumbo v4, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 142
    .local v20, "oldPhoneNumber":Ljava/lang/String;
    const-string/jumbo v4, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 143
    .local v14, "newPhoneNumber":Ljava/lang/String;
    const-string/jumbo v4, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 144
    .local v18, "oldEmail":Ljava/lang/String;
    const-string/jumbo v4, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 145
    .local v12, "newEmail":Ljava/lang/String;
    const-string/jumbo v4, "anrs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 146
    .local v16, "oldAnr":Ljava/lang/String;
    const-string/jumbo v4, "newAnrs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 147
    .local v10, "newAnr":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_119

    const/16 v19, 0x0

    .line 148
    :goto_6a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_123

    const/4 v13, 0x0

    .line 149
    :goto_71
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12b

    const/16 v17, 0x0

    .line 150
    :goto_79
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_135

    const/4 v11, 0x0

    .line 151
    :goto_80
    invoke-virtual/range {p0 .. p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAdnRecordsWithContentValuesInEfBySearch: efid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", values = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 155
    const-string/jumbo v5, ", pin2="

    .line 154
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 157
    :try_start_c0
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->checkThread()V

    .line 158
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 159
    new-instance v22, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 160
    .local v22, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mBaseHandler:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;

    const/4 v5, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 161
    .local v9, "response":Landroid/os/Message;
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 162
    .local v6, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v7, v15, v14, v13, v11}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 163
    .local v7, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v4

    if-eqz v4, :cond_149

    .line 164
    const/16 v4, 0x4f30

    move/from16 v0, p1

    if-eq v0, v4, :cond_ff

    const/16 v4, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v4, :cond_149

    .line 165
    :cond_ff
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v4, :cond_13d

    .line 166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    invoke-virtual {v4, v6, v7, v9}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->updateSimPbAdnBySearch(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_113
    .catchall {:try_start_c0 .. :try_end_113} :catchall_146

    :goto_113
    monitor-exit v23

    .line 180
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSuccess:Z

    return v4

    .line 147
    .end local v6    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v7    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "response":Landroid/os/Message;
    .end local v22    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_119
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .local v19, "oldEmailArray":[Ljava/lang/String;
    goto/16 :goto_6a

    .line 148
    .end local v19    # "oldEmailArray":[Ljava/lang/String;
    :cond_123
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .local v13, "newEmailArray":[Ljava/lang/String;
    goto/16 :goto_71

    .line 149
    .end local v13    # "newEmailArray":[Ljava/lang/String;
    :cond_12b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getAnrStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .local v17, "oldAnrArray":[Ljava/lang/String;
    goto/16 :goto_79

    .line 150
    .end local v17    # "oldAnrArray":[Ljava/lang/String;
    :cond_135
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getAnrStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .local v11, "newAnrArray":[Ljava/lang/String;
    goto/16 :goto_80

    .line 169
    .end local v11    # "newAnrArray":[Ljava/lang/String;
    .restart local v6    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v7    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v9    # "response":Landroid/os/Message;
    .restart local v22    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_13d
    :try_start_13d
    const-string/jumbo v4, "Failure while trying to update by search due to uninit sim pb adncache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_145
    .catchall {:try_start_13d .. :try_end_145} :catchall_146

    goto :goto_113

    .line 156
    .end local v6    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v7    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "response":Landroid/os/Message;
    .end local v22    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_146
    move-exception v4

    monitor-exit v23

    throw v4

    .line 172
    .restart local v6    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v7    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v9    # "response":Landroid/os/Message;
    .restart local v22    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_149
    :try_start_149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v4, :cond_162

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move/from16 v5, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 174
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_113

    .line 176
    :cond_162
    const-string/jumbo v4, "Failure while trying to update by search due to uninitialised adncache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_16a
    .catchall {:try_start_149 .. :try_end_16a} :catchall_146

    goto :goto_113
.end method
