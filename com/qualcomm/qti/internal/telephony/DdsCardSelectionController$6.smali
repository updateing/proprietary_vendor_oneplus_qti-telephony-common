.class Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$6;
.super Ljava/lang/Object;
.source "DdsCardSelectionController.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/QcRilHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$6;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onQcRilHookDisconnected()V
    .registers 1

    .prologue
    .line 716
    return-void
.end method

.method public onQcRilHookReady()V
    .registers 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$6;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-string/jumbo v1, "QcRilHook is ready"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$6;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Z)Z

    .line 713
    return-void
.end method
