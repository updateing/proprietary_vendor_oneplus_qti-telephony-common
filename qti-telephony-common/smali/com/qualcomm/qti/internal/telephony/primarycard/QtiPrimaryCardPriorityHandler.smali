.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;
.super Ljava/lang/Object;
.source "QtiPrimaryCardPriorityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final INVALID_NETWORK:I = -0x1

.field private static final INVALID_PRIORITY:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPcPriorityHandler"

.field private static final VDBG:Z

.field private static packageName:Ljava/lang/String;


# instance fields
.field private mAllPriorityConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

.field private mLoadingConfigCompleted:Z

.field private mLoadingCurrentConfigsDone:Z

.field private mPrefPrimarySlot:I

.field private mPriorityCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.qualcomm.qti.simsettings"

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->packageName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mContext:Landroid/content/Context;

    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v0, v0, [Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->readPriorityConfigFromXml()V

    return-void
.end method

.method private areConfigPrioritiesEqual()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v2, v2, v3

    iget v2, v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    if-eq v1, v2, :cond_1

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private getMaxPrioritySlot()I
    .locals 5

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    if-ge v2, v3, :cond_0

    move v1, v0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v0

    iget v2, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maxPriority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", maxPrioritySlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    return v1
.end method

.method private getNumSlotsWithCdma([I)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v2, :cond_1

    aget v2, p1, v0

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->is3gpp2NwMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getPattern(Landroid/content/res/XmlResourceParser;)Ljava/util/regex/Pattern;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v1, "iin_pattern"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method private getPriorityConfig(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getPriorityConfigComparator()I

    move-result v4

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPriorityConfig: for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": iccid is null, EXIT!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    return-object v8

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPriorityConfig: for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mcc-mnc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Start!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    packed-switch v4, :pswitch_data_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v5, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardTypeSame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPriorityConfig: Found for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    return-object v3

    :pswitch_1
    iget-object v5, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardTypeSame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPriorityConfig: Found for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    return-object v3

    :pswitch_2
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardTypeSame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPriorityConfig: Found for slot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v5, "QtiPcPriorityHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPriorityConfig:Exception:["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QtiPcPriorityHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QtiPcPriorityHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "QtiPcPriorityHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readPriorityConfigFromXml()V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v4, "res is null"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->loge(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getConfigXml()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "xml"

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    const/4 v4, 0x0

    iput v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    const-string/jumbo v4, "priority_config"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    if-eq v4, v7, :cond_2

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->savePriorityConfig(Landroid/content/res/XmlResourceParser;)V

    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v4, "QtiPcPriorityHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception while reading priority configs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAllPriorityConfigs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAllPriorityConfigs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAllPriorityConfigs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v4
.end method

.method private savePriorityConfig(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    invoke-direct {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;-><init>()V

    const-string/jumbo v1, "priority"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->priority:I

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getPattern(Landroid/content/res/XmlResourceParser;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->pattern:Ljava/util/regex/Pattern;

    const-string/jumbo v1, "card_type"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->cardType:Ljava/lang/String;

    const-string/jumbo v1, "mccmnc"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->mccmnc:Ljava/lang/String;

    const-string/jumbo v1, "network1"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network1:I

    const-string/jumbo v1, "network2"

    invoke-interface {p1, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network2:I

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mAllPriorityConfigs:Ljava/util/HashMap;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Added to mAllPriorityConfigs["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPriorityCount:I

    return-void
.end method


# virtual methods
.method public getNwModesFromConfig(I)[I
    .locals 5

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwMode()I

    move-result v0

    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    if-ne v1, p1, :cond_0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network1:I

    :goto_1
    aput v3, v2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;->network2:I

    goto :goto_1

    :cond_1
    aput v0, v2, v1

    goto :goto_2

    :cond_2
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getNumSlotsWithCdma([I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    const-string/jumbo v3, "getNwModesFromConfig: More than one slot has CDMA nwMode set non-primary card nwModes to default nwMode"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    sget v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v1, v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNwModesFromConfig: nwMode from config on slot ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logi(Ljava/lang/String;)V

    if-eq v1, p1, :cond_3

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getDefaultNwMode()I

    move-result v3

    aput v3, v2, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-object v2
.end method

.method public getPrefPrimarySlot()I
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    const-string/jumbo v0, "getPrefPrimarySlot:  Start!!!"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "getPrefPrimarySlot: Current Config Loading not done. EXIT!!!"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->areConfigPrioritiesEqual()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPrefPrimarySlot: return mPrefPrimarySlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getMaxPrioritySlot()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mPrefPrimarySlot:I

    goto :goto_0
.end method

.method public isConfigLoadDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    return v0
.end method

.method public loadCurrentPriorityConfigs(Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingConfigCompleted:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "getPrefPrimarySlot: All Config Loading not done. EXIT!!!"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mCurrPriorityConfigs:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->getPriorityConfig(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler$PriorityConfig;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->mLoadingCurrentConfigsDone:Z

    :cond_3
    return-void
.end method

.method public reloadPriorityConfig()V
    .locals 0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setConfigValue()V

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->readPriorityConfigFromXml()V

    return-void
.end method
