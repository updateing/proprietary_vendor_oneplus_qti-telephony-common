.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetPLMNListResponse"
.end annotation


# instance fields
.field public plmnList:[B

.field public status:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V
    .locals 14

    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v11, 0x0

    iput v11, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->traceId:I

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    move/from16 v0, p2

    iput v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->status:I

    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v11

    if-eqz v11, :cond_2

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    invoke-static {v11}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v10

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    invoke-static {v11}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v5

    packed-switch v10, :pswitch_data_0

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "GetPLMNListResponse: Unexpected Type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Invalid format of byte buffer received in GetPLMNListResponse"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    const/16 v9, 0x20

    mul-int/lit8 v11, v8, 0x6

    new-array v11, v11, [B

    iput-object v11, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    iget-object v11, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v3, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v6

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    iget-object v11, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v3, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v7

    const/4 v11, 0x2

    if-ne v7, v11, :cond_0

    iget-object v11, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    add-int/lit8 v4, v3, 0x1

    const/16 v12, 0x20

    aput-byte v12, v11, v3

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "plmnList = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    invoke-static {v13}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    iput v11, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->traceId:I

    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "traceId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->traceId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
