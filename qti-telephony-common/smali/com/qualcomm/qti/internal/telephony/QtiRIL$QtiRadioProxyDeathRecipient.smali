.class final Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;
.super Ljava/lang/Object;
.source "QtiRIL.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "QtiRadioProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 2

    const-string/jumbo v0, "QTIRILJ"

    const-string/jumbo v1, "serviceDied"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->-wrap2(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    return-void
.end method
