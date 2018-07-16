.class Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;
.super Ljava/lang/Object;
.source "DdsCardSelectionController.java"


# instance fields
.field public cardStatus:I

.field public iccId:Ljava/lang/String;

.field public isCDMACard:Z

.field public isCardReady:Z

.field public isPinLocked:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    .line 86
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public isCDMACard()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    return v0
.end method
