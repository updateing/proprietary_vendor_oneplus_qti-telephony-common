.class Lcom/qualcomm/qcrilhook/QcRilHook$5;
.super Lcom/qualcomm/qcrilhook/OemHookCallback;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSendDataRoamingEnableStatus(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method constructor <init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/QcRilHook;
    .param p2, "$anonymous0"    # Landroid/os/Message;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$5;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 1508
    invoke-direct {p0, p2}, Lcom/qualcomm/qcrilhook/OemHookCallback;-><init>(Landroid/os/Message;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onOemHookResponse([BI)V
    .registers 5
    .param p1, "response"    # [B
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$5;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    const-string/jumbo v1, "QCRIL send data roaming enable status DONE!"

    invoke-static {v0, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;->-wrap0(Lcom/qualcomm/qcrilhook/QcRilHook;Ljava/lang/String;)V

    .line 1512
    return-void
.end method
