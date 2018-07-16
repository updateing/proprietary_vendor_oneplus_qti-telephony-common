.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
.super Ljava/lang/Object;
.source "QtiPrimaryCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;
    }
.end annotation


# static fields
.field public static final COMPARE_CARDTYPE:I = 0x2

.field public static final COMPARE_IIN_CARDTYPE:I = 0x1

.field public static final COMPARE_MCCMNC:I = 0x3

.field private static final CONFIG_CURRENT_PRIMARY_SUB:Ljava/lang/String; = "config_current_primary_sub"

.field private static final CONFIG_DISABLE_DDS_PREFERENCE:Ljava/lang/String; = "config_disable_dds_preference"

.field private static final CONFIG_PRIMARY_SUB_IS_SETABLE:Ljava/lang/String; = "config_primary_sub_is_setable"

.field private static final CONFIG_SUB_SELECT_MODE_MANUAL:Ljava/lang/String; = "config_sub_select_mode_manual"

.field private static final DBG:Z = true

.field private static final DETECT_4G_CARD_PROPERTY_NAME:Ljava/lang/String; = "persist.radio.detect4gcard"

.field public static final DISABLE_USER_SELECTION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPcUtils"

.field public static final PHONE_COUNT:I

.field private static final PRIMARY_CARD_7_5_PROPERTY_NAME:Ljava/lang/String; = "persist.radio.primary_7_5_mode"

.field private static final PRIMARY_CARD_PROPERTY_NAME:Ljava/lang/String; = "persist.radio.primarycard"

.field private static final PRIMARY_CARD_TYPE_2_PROPERTY_NAME:Ljava/lang/String; = "persist.radio.primary_type_2"

.field private static final PRIMCARYCARD_L_W_ENABLED:Z

.field private static final RAF_CDMA:I = 0x70

.field private static final RAF_EVDO:I = 0x3180

.field public static final SHOW_USER_SELECTION_FOR_EVERY_CHANGE:I = 0x3

.field public static final SHOW_USER_SELECTION_ON_PRIORITY_MATCH:I = 0x2

.field public static final SLOT_ID_0:I = 0x0

.field public static final SLOT_ID_1:I = 0x1

.field public static final SLOT_INVALID:I = -0x1

.field public static final SLOT_PRIORITY_MATCH:I = -0x2

.field private static final VDBG:Z = true

.field private static mConfigValue:I

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    .line 109
    sput v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    .line 119
    const-string/jumbo v0, "persist.radio.lw_enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 118
    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PRIMCARYCARD_L_W_ENABLED:Z

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    sput-object p1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    .line 142
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->setConfigValue()V

    .line 143
    return-void
.end method

.method public static disableDds()Z
    .registers 3

    .prologue
    .line 264
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DISABLE_DDS:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    .line 265
    .local v0, "disableDds":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disableDds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 266
    return v0
.end method

.method public static getConfigXml()Ljava/lang/String;
    .registers 1

    .prologue
    .line 203
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_4:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 204
    const-string/jumbo v0, "use priority_config_4.xml"

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logd(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v0, "priority_config_4"

    return-object v0

    .line 206
    :cond_12
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_SUBSIDY_LOCKED_CONFIG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 207
    const-string/jumbo v0, "subsidy_feature_config"

    return-object v0

    .line 208
    :cond_1e
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_3:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 209
    const-string/jumbo v0, "priority_config_3"

    return-object v0

    .line 210
    :cond_2a
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_2:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 211
    const-string/jumbo v0, "priority_config_2"

    return-object v0

    .line 212
    :cond_36
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 213
    const-string/jumbo v0, "priority_config_1"

    return-object v0

    .line 215
    :cond_42
    const-string/jumbo v0, "priority_config_2"

    return-object v0
.end method

.method public static getCurrentPrimarySlotFromDB(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 290
    const-string/jumbo v2, "config_current_primary_sub"

    const/4 v3, -0x1

    .line 289
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 291
    .local v0, "slotId":I
    return v0
.end method

.method public static getDefaultNwMode()I
    .registers 3

    .prologue
    .line 219
    const/4 v0, 0x1

    .line 220
    .local v0, "defNwMode":I
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 221
    const/4 v0, 0x1

    .line 227
    :cond_a
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultNwMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 228
    return v0

    .line 222
    :cond_22
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GW:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 223
    const/4 v0, 0x0

    goto :goto_a

    .line 224
    :cond_2c
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GCWTL:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 225
    const/16 v0, 0x16

    goto :goto_a
.end method

.method public static getDefaultPrimarySlot()I
    .registers 3

    .prologue
    .line 246
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_PRIMARY_SLOT_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    .line 247
    .local v0, "defPrimarySlot":I
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultPrimarySlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 248
    return v0

    .line 246
    .end local v0    # "defPrimarySlot":I
    :cond_21
    const/4 v0, 0x0

    .restart local v0    # "defPrimarySlot":I
    goto :goto_9
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
    .registers 3

    .prologue
    .line 131
    const-class v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    monitor-enter v1

    .line 132
    :try_start_3
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    if-nez v0, :cond_13

    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "QtiPrimaryCardUtils was not initialized!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 131
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0

    .line 135
    :cond_13
    :try_start_13
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_10

    monitor-exit v1

    return-object v0
.end method

.method public static getPriorityConfigComparator()I
    .registers 3

    .prologue
    .line 232
    const/4 v0, 0x2

    .line 233
    .local v0, "comparator":I
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_MCCMNC:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 234
    const/4 v0, 0x3

    .line 240
    :cond_a
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPriorityConfigComparator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 242
    return v0

    .line 235
    :cond_22
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 236
    const/4 v0, 0x2

    goto :goto_a

    .line 237
    :cond_2c
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 238
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static getUserSelectionMode()I
    .registers 3

    .prologue
    .line 271
    const/4 v0, 0x1

    .line 272
    .local v0, "userSelMode":I
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_FOR_EVERY_CHANGE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 273
    const/4 v0, 0x3

    .line 279
    :cond_a
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUserSelectionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 280
    return v0

    .line 274
    :cond_22
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 275
    const/4 v0, 0x2

    goto :goto_a

    .line 276
    :cond_2c
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DISABLE_USER_SELECTION:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 277
    const/4 v0, 0x1

    goto :goto_a
.end method

.method static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const-class v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    monitor-enter v1

    .line 123
    :try_start_3
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    if-nez v0, :cond_e

    .line 124
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    :cond_e
    monitor-exit v1

    .line 127
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    return-object v0

    .line 122
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static is3gpp2NwMode(I)Z
    .registers 4
    .param p0, "nwMode"    # I

    .prologue
    .line 339
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    .line 340
    .local v0, "raf":I
    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x70

    if-eq v1, v2, :cond_10

    and-int/lit16 v1, v0, 0x3180

    const/16 v2, 0x3180

    if-ne v1, v2, :cond_12

    .line 341
    :cond_10
    const/4 v1, 0x1

    return v1

    .line 343
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method private static isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z
    .registers 3
    .param p0, "config"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    .prologue
    .line 284
    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v1

    and-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isDetect4gCardEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 321
    const-string/jumbo v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 322
    const-string/jumbo v2, "persist.radio.detect4gcard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 321
    if-eqz v2, :cond_1b

    .line 323
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v2, v0, :cond_19

    .line 321
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 323
    goto :goto_18

    :cond_1b
    move v0, v1

    .line 321
    goto :goto_18
.end method

.method public static isPrimary7Plus5Enabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 333
    const-string/jumbo v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 334
    const-string/jumbo v2, "persist.radio.primary_7_5_mode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 333
    if-eqz v2, :cond_1b

    .line 335
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v2, v0, :cond_19

    .line 333
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 335
    goto :goto_18

    :cond_1b
    move v0, v1

    .line 333
    goto :goto_18
.end method

.method public static isPrimaryCardFeatureEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    const-string/jumbo v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v2, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public static isPrimaryCardType2Enabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 327
    const-string/jumbo v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 328
    const-string/jumbo v2, "persist.radio.primary_type_2"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 327
    if-eqz v2, :cond_1b

    .line 329
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PHONE_COUNT:I

    if-le v2, v0, :cond_19

    .line 327
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 329
    goto :goto_18

    :cond_1b
    move v0, v1

    .line 327
    goto :goto_18
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 347
    const-string/jumbo v0, "QtiPcUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 359
    const-string/jumbo v0, "QtiPcUtils"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 355
    const-string/jumbo v0, "QtiPcUtils"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 351
    const-string/jumbo v0, "QtiPcUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void
.end method

.method public static read4gFlag()Z
    .registers 3

    .prologue
    .line 258
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->READ_4G_FLAG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    .line 259
    .local v0, "read4g":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read4gFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 260
    return v0
.end method

.method public static saveDisableDdsPreferenceInDB(Z)V
    .registers 4
    .param p0, "disableDds"    # Z

    .prologue
    .line 306
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 307
    const-string/jumbo v2, "config_disable_dds_preference"

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    .line 306
    :goto_f
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    return-void

    .line 307
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static saveEnableUserSelectioninDB(Z)V
    .registers 4
    .param p0, "enableUserSel"    # Z

    .prologue
    .line 301
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 302
    const-string/jumbo v2, "config_sub_select_mode_manual"

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    .line 301
    :goto_f
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    return-void

    .line 302
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static savePrimarySetable(Z)V
    .registers 4
    .param p0, "isSetable"    # Z

    .prologue
    .line 312
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 313
    const-string/jumbo v2, "config_primary_sub_is_setable"

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    .line 312
    :goto_f
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    return-void

    .line 313
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static savePrimarySlotToDB(I)V
    .registers 3
    .param p0, "primarySlot"    # I

    .prologue
    .line 296
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 297
    const-string/jumbo v1, "config_current_primary_sub"

    .line 296
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 298
    return-void
.end method

.method protected static setConfigValue()V
    .registers 9

    .prologue
    .line 146
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v5

    .line 147
    .local v5, "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    const/4 v0, 0x0

    .line 148
    .local v0, "isLpluslSupport":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oemhook service status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logd(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 150
    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getLpluslSupportStatus()Z

    move-result v0

    .line 153
    .end local v0    # "isLpluslSupport":Z
    :cond_2c
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v2

    .line 154
    .local v2, "isSubsidyLockFeatureEnabled":Z
    if-eqz v2, :cond_9c

    .line 155
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLocked(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_9a

    .line 156
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyUnlocked(Landroid/content/Context;)Z

    move-result v3

    .line 157
    :goto_40
    if-eqz v2, :cond_9e

    .line 158
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isPermanentlyUnlocked(Landroid/content/Context;)Z

    move-result v1

    .line 161
    :goto_48
    if-eqz v3, :cond_a0

    .line 162
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_SUBSIDY_LOCKED_CONFIG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 163
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_MCCMNC:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 162
    or-int/2addr v6, v7

    .line 164
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 162
    or-int/2addr v6, v7

    .line 165
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 162
    or-int/2addr v6, v7

    .line 166
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 162
    or-int/2addr v6, v7

    sput v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    .line 199
    :cond_6e
    :goto_6e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ConfigValue is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", in Binary:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    const/4 v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logd(Ljava/lang/String;)V

    .line 200
    return-void

    .line 155
    :cond_9a
    const/4 v3, 0x1

    .local v3, "isSubsidyLockedOrRestricted":Z
    goto :goto_40

    .line 154
    .end local v3    # "isSubsidyLockedOrRestricted":Z
    :cond_9c
    const/4 v3, 0x0

    .restart local v3    # "isSubsidyLockedOrRestricted":Z
    goto :goto_40

    .line 157
    .end local v3    # "isSubsidyLockedOrRestricted":Z
    :cond_9e
    const/4 v1, 0x0

    .local v1, "isPermanentlyUnlocked":Z
    goto :goto_48

    .line 167
    .end local v1    # "isPermanentlyUnlocked":Z
    :cond_a0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isDetect4gCardEnabled()Z

    move-result v6

    if-nez v6, :cond_a8

    if-eqz v1, :cond_df

    .line 168
    :cond_a8
    sget-boolean v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->PRIMCARYCARD_L_W_ENABLED:Z

    if-eqz v6, :cond_d8

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GW:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v4

    .line 170
    .local v4, "nwmodeConfig":I
    :goto_b2
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_2:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 171
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 170
    or-int/2addr v6, v7

    or-int/2addr v6, v4

    .line 173
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->READ_4G_FLAG:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 170
    or-int/2addr v6, v7

    .line 174
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 170
    or-int/2addr v6, v7

    .line 175
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_FOR_EVERY_CHANGE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 170
    or-int/2addr v6, v7

    sput v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto :goto_6e

    .line 169
    .end local v4    # "nwmodeConfig":I
    :cond_d8
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v4

    .restart local v4    # "nwmodeConfig":I
    goto :goto_b2

    .line 176
    .end local v4    # "nwmodeConfig":I
    :cond_df
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimary7Plus5Enabled()Z

    move-result v6

    if-eqz v6, :cond_131

    .line 177
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_3:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 178
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 177
    or-int/2addr v6, v7

    .line 179
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 177
    or-int/2addr v6, v7

    .line 180
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 177
    or-int/2addr v6, v7

    .line 181
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 177
    or-int/2addr v6, v7

    sput v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    .line 182
    if-eqz v0, :cond_6e

    .line 183
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_4:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 184
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 183
    or-int/2addr v6, v7

    .line 185
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GCWTL:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 183
    or-int/2addr v6, v7

    .line 186
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 183
    or-int/2addr v6, v7

    .line 187
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 183
    or-int/2addr v6, v7

    sput v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto/16 :goto_6e

    .line 189
    :cond_131
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isPrimaryCardFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_15d

    .line 190
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->PRIORITY_CONFIG_1:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v6

    .line 191
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->COMPARE_IIN_CARDTYPE:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 190
    or-int/2addr v6, v7

    .line 192
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->DEFAULT_NWMODE_GSM:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 190
    or-int/2addr v6, v7

    .line 193
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 190
    or-int/2addr v6, v7

    .line 194
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SHOW_USER_SELECTION_ON_PRIORITY_MATCH:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->value()I

    move-result v7

    .line 190
    or-int/2addr v6, v7

    sput v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto/16 :goto_6e

    .line 196
    :cond_15d
    const/4 v6, 0x0

    sput v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->mConfigValue:I

    goto/16 :goto_6e
.end method

.method public static setPrimaryCardOnDeAct()Z
    .registers 3

    .prologue
    .line 252
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;->SET_PRIMARY_ON_DEACT:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->isBitSetInConfig(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils$ConfigBits;)Z

    move-result v0

    .line 253
    .local v0, "setPcOnDeact":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPrimaryCardOnDeAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->logv(Ljava/lang/String;)V

    .line 254
    return v0
.end method
