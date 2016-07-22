.class Lcom/alibaba/fastjson/asm/MethodWriter;
.super Ljava/lang/Object;
.source "MethodWriter.java"

# interfaces
.implements Lcom/alibaba/fastjson/asm/MethodVisitor;


# static fields
.field static final ACC_CONSTRUCTOR:I = 0x40000

.field static final APPEND_FRAME:I = 0xfc

.field static final CHOP_FRAME:I = 0xf8

.field static final FULL_FRAME:I = 0xff

.field static final RESERVED:I = 0x80

.field static final SAME_FRAME:I = 0x0

.field static final SAME_FRAME_EXTENDED:I = 0xfb

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME:I = 0x40

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME_EXTENDED:I = 0xf7


# instance fields
.field private access:I

.field classReaderLength:I

.field private code:Lcom/alibaba/fastjson/asm/ByteVector;

.field final cw:Lcom/alibaba/fastjson/asm/ClassWriter;

.field private final desc:I

.field exceptionCount:I

.field exceptions:[I

.field private maxLocals:I

.field private maxStack:I

.field private final name:I

.field next:Lcom/alibaba/fastjson/asm/MethodWriter;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    .line 174
    iget-object v0, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    if-nez v0, :cond_0

    .line 175
    iput-object p0, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    .line 179
    :goto_0
    iput-object p0, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->lastMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    .line 180
    iput-object p1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    .line 181
    iput p2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->access:I

    .line 182
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->name:I

    .line 183
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->desc:I

    .line 185
    if-eqz p6, :cond_1

    array-length v0, p6

    if-lez v0, :cond_1

    .line 186
    array-length v0, p6

    iput v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    .line 187
    iget v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptions:[I

    .line 188
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    if-ge v0, v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptions:[I

    aget-object v2, p6, v0

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/asm/ClassWriter;->lastMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    iput-object p0, v0, Lcom/alibaba/fastjson/asm/MethodWriter;->next:Lcom/alibaba/fastjson/asm/MethodWriter;

    goto :goto_0

    .line 192
    :cond_1
    return-void
.end method


# virtual methods
.method final getSize()I
    .locals 3

    .prologue
    .line 336
    const/16 v0, 0x8

    .line 337
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v1, v1, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    if-lez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    const-string v2, "Code"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v1, v1, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x12

    add-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    .line 341
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    if-lez v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 343
    iget v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 345
    :cond_1
    return v0
.end method

.method final put(Lcom/alibaba/fastjson/asm/ByteVector;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 354
    const/high16 v0, 0x6

    iget v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->access:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x40

    or-int/2addr v0, v2

    .line 355
    iget v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->access:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->name:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->desc:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 357
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    if-lez v0, :cond_3

    .line 358
    const/4 v0, 0x1

    .line 360
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    if-lez v2, :cond_0

    .line 361
    add-int/lit8 v0, v0, 0x1

    .line 364
    :cond_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 365
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    if-lez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x0

    .line 367
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    const-string v3, "Code"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 368
    iget v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->maxStack:I

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 369
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget-object v2, v2, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v3, v3, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->putByteArray([BII)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 370
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 372
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 374
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    if-lez v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    const-string v2, "Exceptions"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 376
    iget v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 377
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptionCount:I

    if-ge v1, v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->exceptions:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 382
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public visitEnd()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-virtual {v0, p2, p3, p4}, Lcom/alibaba/fastjson/asm/ClassWriter;->newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson/asm/Item;->index:I

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 247
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/ByteVector;->put11(II)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 308
    return-void
.end method

.method public visitInsn(I)V
    .locals 1
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 203
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/ByteVector;->put11(II)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 213
    return-void
.end method

.method public visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 269
    iget v0, p2, Lcom/alibaba/fastjson/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/alibaba/fastjson/asm/Label;->position:I

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v1, v1, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    sub-int/2addr v0, v1

    const/16 v1, -0x8000

    if-ge v0, v1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 278
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v1, v1, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, p0, v0, v1}, Lcom/alibaba/fastjson/asm/Label;->put(Lcom/alibaba/fastjson/asm/MethodWriter;Lcom/alibaba/fastjson/asm/ByteVector;I)V

    .line 280
    return-void
.end method

.method public visitLabel(Lcom/alibaba/fastjson/asm/Label;)V
    .locals 2
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget-object v1, v1, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    invoke-virtual {p1, p0, v0, v1}, Lcom/alibaba/fastjson/asm/Label;->resolve(Lcom/alibaba/fastjson/asm/MethodWriter;I[B)V

    .line 285
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 291
    iget v1, v0, Lcom/alibaba/fastjson/asm/Item;->index:I

    .line 292
    iget v2, v0, Lcom/alibaba/fastjson/asm/Item;->type:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget v0, v0, Lcom/alibaba/fastjson/asm/Item;->type:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 299
    :goto_0
    return-void

    .line 294
    :cond_1
    const/16 v0, 0x100

    if-lt v1, v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->put11(II)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_0
.end method

.method public visitMaxs(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    iput p1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->maxStack:I

    .line 312
    iput p2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->maxLocals:I

    .line 313
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xb9

    const/4 v1, 0x0

    .line 250
    if-ne p1, v4, :cond_0

    const/4 v0, 0x1

    .line 251
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-virtual {v2, p2, p3, p4, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v3

    .line 252
    iget v2, v3, Lcom/alibaba/fastjson/asm/Item;->intVal:I

    .line 255
    if-eqz v0, :cond_1

    .line 256
    if-nez v2, :cond_2

    .line 257
    invoke-static {p4}, Lcom/alibaba/fastjson/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    .line 258
    iput v0, v3, Lcom/alibaba/fastjson/asm/Item;->intVal:I

    .line 260
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v3, v3, Lcom/alibaba/fastjson/asm/Item;->index:I

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v2

    shr-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->put11(II)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 264
    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 250
    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v1, v3, Lcom/alibaba/fastjson/asm/Item;->index:I

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->cw:Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v0, v0, Lcom/alibaba/fastjson/asm/Item;->index:I

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 240
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 218
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    .line 220
    const/16 v0, 0x36

    if-ge p1, v0, :cond_0

    .line 222
    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    add-int/2addr v0, p2

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 233
    :goto_1
    return-void

    .line 225
    :cond_0
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    add-int/2addr v0, p2

    goto :goto_0

    .line 228
    :cond_1
    const/16 v0, 0x100

    if-lt p2, v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_1

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodWriter;->code:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/asm/ByteVector;->put11(II)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_1
.end method
