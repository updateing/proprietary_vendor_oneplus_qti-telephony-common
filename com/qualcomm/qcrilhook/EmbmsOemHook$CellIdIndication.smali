.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CellIdIndication"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public mcc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V
    .registers 12
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1154
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1149
    iput-object v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;->mcc:Ljava/lang/String;

    .line 1150
    iput-object v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;->mnc:Ljava/lang/String;

    .line 1151
    iput-object v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;->id:Ljava/lang/String;

    .line 1152
    iput v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;->traceId:I

    .line 1156
    :goto_f
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_122

    .line 1158
    :try_start_15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v4

    .line 1159
    .local v4, "type":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    .line 1162
    .local v2, "length":I
    packed-switch v4, :pswitch_data_124

    .line 1192
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CellIdIndication: Unexpected Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/nio/BufferUnderflowException; {:try_start_15 .. :try_end_43} :catch_44

    goto :goto_f

    .line 1195
    .end local v2    # "length":I
    .end local v4    # "type":I
    :catch_44
    move-exception v0

    .line 1196
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Unexpected buffer format when parsing for CellIdIndication"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1164
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "length":I
    .restart local v4    # "type":I
    :pswitch_50
    :try_start_50
    new-array v3, v2, [B

    .line 1165
    .local v3, "temp":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_53
    if-ge v1, v2, :cond_5e

    .line 1166
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v3, v1

    .line 1165
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 1168
    :cond_5e
    new-instance v5, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v5, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>([B)V

    invoke-virtual {v5}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toStringValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;->mcc:Ljava/lang/String;

    .line 1169
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MCC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;->mcc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1172
    .end local v1    # "i":I
    .end local v3    # "temp":[B
    :pswitch_87
    new-array v3, v2, [B

    .line 1173
    .restart local v3    # "temp":[B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8a
    if-ge v1, v2, :cond_95

    .line 1174
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v3, v1

    .line 1173
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 1176
    :cond_95
    new-instance v5, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v5, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>([B)V

    invoke-virtual {v5}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toStringValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;->mnc:Ljava/lang/String;

    .line 1177
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MNC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;->mnc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1182
    .end local v1    # "i":I
    .end local v3    # "temp":[B
    :pswitch_bf
    const-string/jumbo v5, "%7s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1183
    const/16 v6, 0x20

    const/16 v7, 0x30

    .line 1182
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;->id:Ljava/lang/String;

    .line 1184
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CellId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1188
    :pswitch_fd
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;->traceId:I

    .line 1189
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "traceId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;->traceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catch Ljava/nio/BufferUnderflowException; {:try_start_50 .. :try_end_120} :catch_44

    goto/16 :goto_f

    .line 1199
    .end local v2    # "length":I
    .end local v4    # "type":I
    :cond_122
    return-void

    .line 1162
    nop

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_fd
        :pswitch_50
        :pswitch_87
        :pswitch_bf
    .end packed-switch
.end method
