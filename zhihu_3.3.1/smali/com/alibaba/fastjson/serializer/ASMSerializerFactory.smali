.class public Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
.super Ljava/lang/Object;
.source "ASMSerializerFactory.java"

# interfaces
.implements Lcom/alibaba/fastjson/asm/Opcodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    }
.end annotation


# instance fields
.field private classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

.field private final seed:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/ASMClassLoader;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    return-void
.end method

.method private _after(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x19

    .line 1219
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1220
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1221
    const/16 v0, 0x15

    const-string v1, "seperator"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1222
    const/16 v0, 0xb8

    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeAfter"

    .line 1223
    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C"

    .line 1222
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const/16 v0, 0x36

    const-string v1, "seperator"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1225
    return-void
.end method

.method private _apply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0x15

    const/16 v2, 0x19

    const/16 v3, 0xb8

    .line 1228
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    .line 1230
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1231
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1232
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1234
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 1235
    const-string v0, "byte"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1236
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    .line 1237
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Z"

    .line 1236
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    :goto_0
    return-void

    .line 1238
    :cond_0
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 1239
    const-string v0, "short"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1240
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    .line 1241
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Z"

    .line 1240
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1242
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 1243
    const-string v0, "int"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1244
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    .line 1245
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Z"

    .line 1244
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1246
    :cond_2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 1247
    const-string v0, "char"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1248
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    .line 1249
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Z"

    .line 1248
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1250
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 1251
    const/16 v0, 0x16

    const-string v1, "long"

    invoke-virtual {p3, v1, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1252
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    .line 1253
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Z"

    .line 1252
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1254
    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 1255
    const/16 v0, 0x17

    const-string v1, "float"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1256
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    .line 1257
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Z"

    .line 1256
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1258
    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 1259
    const/16 v0, 0x18

    const-string v1, "double"

    invoke-virtual {p3, v1, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1260
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    .line 1261
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Z"

    .line 1260
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1262
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 1263
    const-string v0, "boolean"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1264
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    .line 1265
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Z"

    .line 1264
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1266
    :cond_7
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_8

    .line 1267
    const-string v0, "decimal"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1268
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    .line 1269
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    .line 1268
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1270
    :cond_8
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_9

    .line 1271
    const-string v0, "string"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1272
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    .line 1273
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    .line 1272
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1274
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1275
    const-string v0, "enum"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1276
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    .line 1277
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    .line 1276
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1278
    :cond_a
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1279
    const-string v0, "list"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1280
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    .line 1281
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    .line 1280
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1283
    :cond_b
    const-string v0, "object"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1284
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    .line 1285
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    .line 1284
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private _before(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x19

    .line 1210
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1211
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1212
    const/16 v0, 0x15

    const-string v1, "seperator"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1213
    const/16 v0, 0xb8

    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeBefore"

    .line 1214
    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C"

    .line 1213
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const/16 v0, 0x36

    const-string v1, "seperator"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1216
    return-void
.end method

.method private _boolean(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x15

    .line 766
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 768
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 769
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 770
    const/16 v1, 0x36

    const-string v2, "boolean"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 772
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 774
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 775
    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 776
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 777
    const-string v1, "boolean"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 779
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;Z)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 783
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 784
    return-void
.end method

.method private _byte(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x15

    .line 799
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 801
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 802
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 803
    const/16 v1, 0x36

    const-string v2, "byte"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 805
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 807
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 808
    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 809
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 810
    const-string v1, "byte"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 812
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;I)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 816
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 817
    return-void
.end method

.method private _char(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x15

    .line 745
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 747
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 748
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 749
    const/16 v1, 0x36

    const-string v2, "char"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 751
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 753
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 754
    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 755
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 756
    const-string v1, "char"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 758
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;C)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 762
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 763
    return-void
.end method

.method private _decimal(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v6, 0xa7

    const/16 v4, 0x19

    .line 862
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 864
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 865
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 866
    const/16 v1, 0x3a

    const-string v2, "decimal"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 868
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 870
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 871
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 872
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 874
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 877
    const-string v1, "decimal"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 878
    const/16 v1, 0xc7

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 879
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 880
    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 882
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 884
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 885
    const/16 v1, 0x15

    const-string v2, "seperator"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 886
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 887
    const-string v1, "decimal"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 888
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "writeFieldValue"

    .line 889
    const-string v5, "(CLjava/lang/String;Ljava/math/BigDecimal;)V"

    .line 888
    invoke-interface {p2, v1, v2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 892
    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 894
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 896
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 897
    return-void
.end method

.method private _double(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x19

    const/4 v3, 0x2

    .line 725
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 727
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 728
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 729
    const/16 v1, 0x39

    const-string v2, "double"

    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 731
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 733
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 734
    const/16 v1, 0x15

    const-string v2, "seperator"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 735
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 736
    const/16 v1, 0x18

    const-string v2, "double"

    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 737
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;D)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 741
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 742
    return-void
.end method

.method private _enum(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0xb6

    const/16 v6, 0x19

    .line 636
    .line 637
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 638
    if-eqz v0, :cond_3

    .line 639
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v1, v3, :cond_0

    .line 646
    :goto_1
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 647
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 648
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 650
    invoke-direct {p0, p2, p3, p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 651
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 652
    const/16 v4, 0xc0

    const-class v5, Ljava/lang/Enum;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 653
    const/16 v4, 0x3a

    const-string v5, "enum"

    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 655
    invoke-direct {p0, p2, p3, p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 657
    const-string v4, "enum"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 658
    const/16 v4, 0xc7

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 659
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 660
    const/16 v4, 0xa7

    invoke-interface {p2, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 662
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 663
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v6, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 664
    const/16 v1, 0x15

    const-string v4, "seperator"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 665
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v6, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 666
    const-string v1, "enum"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v6, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 668
    if-eqz v0, :cond_2

    .line 669
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString"

    const-string v4, "()Ljava/lang/String;"

    invoke-interface {p2, v7, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-class v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "writeFieldValue"

    .line 671
    const-string v4, "(CLjava/lang/String;Ljava/lang/String;)V"

    .line 670
    invoke-interface {p2, v7, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :goto_2
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 679
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 681
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 682
    return-void

    .line 639
    :cond_0
    aget-object v4, v2, v1

    .line 640
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v4, v5, :cond_1

    .line 641
    const/4 v0, 0x1

    .line 639
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 673
    :cond_2
    const-class v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "writeFieldValue"

    .line 674
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(CLjava/lang/String;L"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v5, Ljava/lang/Enum;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";)V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 673
    invoke-interface {p2, v7, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto/16 :goto_1
.end method

.method private _filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x19

    .line 1123
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1124
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    const-string v0, "out"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1126
    const/16 v0, 0xb2

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SkipTransientField"

    .line 1127
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "L"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1126
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isEnabled"

    .line 1129
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(L"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1128
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const/16 v0, 0x9a

    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1136
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_apply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1137
    const/16 v0, 0x99

    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1139
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_processKey(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1141
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1142
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_processValue(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1144
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original()I

    move-result v1

    invoke-interface {p1, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1145
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue()I

    move-result v1

    invoke-interface {p1, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1146
    const/16 v1, 0xa5

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1147
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1148
    const/16 v1, 0xa7

    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1150
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1151
    return-void
.end method

.method private _float(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x19

    .line 705
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 707
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 708
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 709
    const/16 v1, 0x38

    const-string v2, "float"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 711
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 713
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 714
    const/16 v1, 0x15

    const-string v2, "seperator"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 715
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 716
    const/16 v1, 0x17

    const-string v2, "float"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 717
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;F)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 721
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 722
    return-void
.end method

.method private _get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x19

    .line 787
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 788
    if-eqz v0, :cond_0

    .line 789
    const-string v1, "entity"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 790
    const/16 v1, 0xb6

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :goto_0
    return-void

    .line 792
    :cond_0
    const-string v0, "entity"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 793
    const/16 v0, 0xb4

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 794
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 793
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1419
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v9

    .line 1421
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1422
    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1423
    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1424
    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1426
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1429
    const/4 v8, 0x0

    .line 1430
    const/4 v7, 0x0

    .line 1431
    const/4 v6, 0x0

    .line 1432
    const/4 v5, 0x0

    .line 1433
    const/4 v4, 0x0

    .line 1434
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1435
    if-eqz v3, :cond_11

    .line 1436
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v13

    array-length v14, v13

    const/4 v3, 0x0

    move/from16 v17, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v17

    :goto_0
    if-lt v8, v14, :cond_2

    .line 1451
    :goto_1
    if-nez v7, :cond_0

    .line 1452
    const/16 v7, 0x19

    const-string v8, "out"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1453
    const/16 v7, 0xb2

    const-class v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "WriteMapNullValue"

    .line 1454
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "L"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v15}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1453
    move-object/from16 v0, p1

    invoke-interface {v0, v7, v8, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    const/16 v7, 0xb6

    const-class v8, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "isEnabled"

    .line 1456
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "(L"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v15}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")Z"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1455
    move-object/from16 v0, p1

    invoke-interface {v0, v7, v8, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    const/16 v7, 0x99

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1460
    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1462
    const/16 v7, 0x19

    const-string v8, "out"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1463
    const/16 v7, 0x15

    const-string v8, "seperator"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1464
    const/16 v7, 0x19

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1466
    const-class v7, Ljava/lang/String;

    if-eq v9, v7, :cond_1

    const-class v7, Ljava/lang/Character;

    if-ne v9, v7, :cond_9

    .line 1467
    :cond_1
    if-eqz v5, :cond_8

    .line 1468
    const-string v3, ""

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1469
    const/16 v3, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "writeFieldValue"

    .line 1470
    const-string v6, "(CLjava/lang/String;Ljava/lang/String;)V"

    .line 1469
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1509
    const/16 v3, 0xa7

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1511
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1513
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1514
    return-void

    .line 1436
    :cond_2
    aget-object v15, v13, v8

    .line 1437
    sget-object v16, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 1438
    const/4 v7, 0x1

    .line 1436
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1439
    :cond_4
    sget-object v16, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1440
    const/4 v6, 0x1

    .line 1441
    goto :goto_3

    :cond_5
    sget-object v16, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1442
    const/4 v5, 0x1

    .line 1443
    goto :goto_3

    :cond_6
    sget-object v16, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 1444
    const/4 v4, 0x1

    .line 1445
    goto :goto_3

    :cond_7
    sget-object v16, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 1446
    const/4 v3, 0x1

    goto :goto_3

    .line 1472
    :cond_8
    const/16 v3, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "writeFieldNullString"

    .line 1473
    const-string v6, "(CLjava/lang/String;)V"

    .line 1472
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1475
    :cond_9
    const-class v5, Ljava/lang/Number;

    invoke-virtual {v5, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1476
    if-eqz v6, :cond_a

    .line 1477
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1478
    const/16 v3, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "writeFieldValue"

    .line 1479
    const-string v6, "(CLjava/lang/String;I)V"

    .line 1478
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1481
    :cond_a
    const/16 v3, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "writeFieldNullNumber"

    .line 1482
    const-string v6, "(CLjava/lang/String;)V"

    .line 1481
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1484
    :cond_b
    const-class v5, Ljava/lang/Boolean;

    if-ne v9, v5, :cond_d

    .line 1485
    if-eqz v4, :cond_c

    .line 1486
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1487
    const/16 v3, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "writeFieldValue"

    .line 1488
    const-string v6, "(CLjava/lang/String;Z)V"

    .line 1487
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1490
    :cond_c
    const/16 v3, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "writeFieldNullBoolean"

    .line 1491
    const-string v6, "(CLjava/lang/String;)V"

    .line 1490
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1493
    :cond_d
    const-class v4, Ljava/util/Collection;

    invoke-virtual {v4, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1494
    :cond_e
    if-eqz v3, :cond_f

    .line 1495
    const/16 v3, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "writeFieldEmptyList"

    .line 1496
    const-string v6, "(CLjava/lang/String;)V"

    .line 1495
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1498
    :cond_f
    const/16 v3, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "writeFieldNullList"

    .line 1499
    const-string v6, "(CLjava/lang/String;)V"

    .line 1498
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1502
    :cond_10
    const/16 v3, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "writeFieldNull"

    .line 1503
    const-string v6, "(CLjava/lang/String;)V"

    .line 1502
    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    goto/16 :goto_1
.end method

.method private _int(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x15

    .line 841
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 843
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 844
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 845
    const/16 v1, 0x36

    const-string v2, "int"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 847
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 849
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 850
    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 851
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 852
    const-string v1, "int"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 854
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;I)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 858
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 859
    return-void
.end method

.method private _list(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 935
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 938
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 939
    const-class v1, Ljava/lang/Object;

    .line 944
    :goto_0
    const/4 v0, 0x0

    .line 945
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_5

    move-object v0, v1

    .line 946
    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    .line 949
    :goto_1
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 951
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 952
    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 953
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 955
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 957
    invoke-direct {p0, p2, p3, p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 958
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 959
    const/16 v0, 0xc0

    const-class v6, Ljava/util/List;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 960
    const/16 v0, 0x3a

    const-string v6, "list"

    invoke-virtual {p4, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 962
    invoke-direct {p0, p2, p3, p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 964
    const/16 v0, 0x19

    const-string v6, "list"

    invoke-virtual {p4, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 965
    const/16 v0, 0xc7

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 966
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 967
    const/16 v0, 0xa7

    invoke-interface {p2, v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 969
    invoke-interface {p2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 971
    const/16 v0, 0x19

    const-string v4, "out"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 972
    const/16 v0, 0x15

    const-string v4, "seperator"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 973
    const/16 v0, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "write"

    const-string v7, "(C)V"

    invoke-interface {p2, v0, v4, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const/16 v0, 0x19

    const-string v4, "out"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 976
    const/16 v0, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 977
    const/16 v0, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "writeFieldName"

    const-string v7, "(Ljava/lang/String;)V"

    invoke-interface {p2, v0, v4, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const/16 v0, 0x19

    const-string v4, "list"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 981
    const/16 v0, 0xb9

    const-class v4, Ljava/util/List;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "size"

    const-string v7, "()I"

    invoke-interface {p2, v0, v4, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const/16 v0, 0x36

    const-string v4, "int"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 984
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 985
    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 986
    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 988
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 990
    const/16 v0, 0x15

    const-string v7, "int"

    invoke-virtual {p4, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 991
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 992
    const/16 v0, 0xa0

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 994
    const/16 v0, 0x19

    const-string v7, "out"

    invoke-virtual {p4, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 995
    const-string v0, "[]"

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 996
    const/16 v0, 0xb6

    const-class v7, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "write"

    const-string v9, "(Ljava/lang/String;)V"

    invoke-interface {p2, v0, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const/16 v0, 0xa7

    invoke-interface {p2, v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1000
    invoke-interface {p2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1003
    const/16 v0, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1004
    const/16 v0, 0x19

    const-string v4, "list"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1005
    const/16 v0, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1006
    const/16 v0, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "setContext"

    .line 1007
    const-string v8, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 1006
    invoke-interface {p2, v0, v4, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const/16 v0, 0x19

    const-string v4, "out"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1012
    const/16 v0, 0x10

    const/16 v4, 0x5b

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1013
    const/16 v0, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "write"

    const-string v8, "(C)V"

    invoke-interface {p2, v0, v4, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1017
    const/16 v0, 0xc0

    const-class v4, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1018
    const/16 v0, 0x3a

    const-string v4, "list_ser"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1020
    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1021
    new-instance v7, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v7}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1023
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1024
    const/16 v0, 0x36

    const-string v8, "i"

    invoke-virtual {p4, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1027
    invoke-interface {p2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1028
    const/16 v0, 0x15

    const-string v8, "i"

    invoke-virtual {p4, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1030
    const/16 v0, 0x15

    const-string v8, "int"

    invoke-virtual {p4, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1031
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1032
    const/16 v0, 0x64

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1034
    const/16 v0, 0xa2

    invoke-interface {p2, v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1036
    const-class v0, Ljava/lang/String;

    if-ne v1, v0, :cond_1

    .line 1038
    const/16 v0, 0x19

    const-string v8, "out"

    invoke-virtual {p4, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1039
    const/16 v0, 0x19

    const-string v8, "list"

    invoke-virtual {p4, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1040
    const/16 v0, 0x15

    const-string v8, "i"

    invoke-virtual {p4, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1041
    const/16 v0, 0xb9

    const-class v8, Ljava/util/List;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "get"

    const-string v10, "(I)Ljava/lang/Object;"

    invoke-interface {p2, v0, v8, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const/16 v0, 0xc0

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1043
    const/16 v0, 0x10

    const/16 v8, 0x2c

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1044
    const/16 v0, 0xb6

    const-class v8, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "writeString"

    .line 1045
    const-string v10, "(Ljava/lang/String;C)V"

    .line 1044
    invoke-interface {p2, v0, v8, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :goto_2
    const-string v0, "i"

    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/4 v8, 0x1

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIincInsn(II)V

    .line 1069
    const/16 v0, 0xa7

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1071
    invoke-interface {p2, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1073
    const-class v0, Ljava/lang/String;

    if-ne v1, v0, :cond_3

    .line 1075
    const/16 v0, 0x19

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1076
    const/16 v0, 0x19

    const-string v1, "list"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1077
    const/16 v0, 0x15

    const-string v1, "int"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1078
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1079
    const/16 v0, 0x64

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1080
    const/16 v0, 0xb9

    const-class v1, Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "get"

    const-string v4, "(I)Ljava/lang/Object;"

    invoke-interface {p2, v0, v1, v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const/16 v0, 0xc0

    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1082
    const/16 v0, 0x10

    const/16 v1, 0x5d

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1083
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeString"

    .line 1084
    const-string v4, "(Ljava/lang/String;C)V"

    .line 1083
    invoke-interface {p2, v0, v1, v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :goto_3
    const/16 v0, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1110
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "popContext"

    const-string v4, "()V"

    invoke-interface {p2, v0, v1, v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-interface {p2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1115
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1117
    invoke-interface {p2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1119
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1120
    return-void

    .line 941
    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 1047
    :cond_1
    const/16 v0, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v8

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1048
    const/16 v0, 0x19

    const-string v8, "list"

    invoke-virtual {p4, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1049
    const/16 v0, 0x15

    const-string v8, "i"

    invoke-virtual {p4, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1050
    const/16 v0, 0xb9

    const-class v8, Ljava/util/List;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "get"

    const-string v10, "(I)Ljava/lang/Object;"

    invoke-interface {p2, v0, v8, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const/16 v0, 0x15

    const-string v8, "i"

    invoke-virtual {p4, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1052
    const/16 v0, 0xb8

    const-class v8, Ljava/lang/Integer;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "valueOf"

    const-string v10, "(I)Ljava/lang/Integer;"

    invoke-interface {p2, v0, v8, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 1055
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1056
    const/16 v0, 0xb6

    const-class v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "writeWithFieldName"

    .line 1057
    const-string v10, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    .line 1056
    invoke-interface {p2, v0, v8, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :goto_4
    const/16 v0, 0x19

    const-string v8, "out"

    invoke-virtual {p4, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1064
    const/16 v0, 0x10

    const/16 v8, 0x2c

    invoke-interface {p2, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1065
    const/16 v0, 0xb6

    const-class v8, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "write"

    const-string v10, "(C)V"

    invoke-interface {p2, v0, v8, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1059
    :cond_2
    const/16 v0, 0xb6

    const-class v8, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "writeWithFieldName"

    .line 1060
    const-string v10, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 1059
    invoke-interface {p2, v0, v8, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1086
    :cond_3
    const/16 v0, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1087
    const/16 v0, 0x19

    const-string v4, "list"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1088
    const/16 v0, 0x15

    const-string v4, "i"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1089
    const/16 v0, 0xb9

    const-class v4, Ljava/util/List;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "get"

    const-string v8, "(I)Ljava/lang/Object;"

    invoke-interface {p2, v0, v4, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const/16 v0, 0x15

    const-string v4, "i"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1091
    const/16 v0, 0xb8

    const-class v4, Ljava/lang/Integer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "valueOf"

    const-string v8, "(I)Ljava/lang/Integer;"

    invoke-interface {p2, v0, v4, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1094
    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1095
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeWithFieldName"

    .line 1096
    const-string v4, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    .line 1095
    invoke-interface {p2, v0, v1, v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :goto_5
    const/16 v0, 0x19

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1103
    const/16 v0, 0x10

    const/16 v1, 0x5d

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1104
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "write"

    const-string v4, "(C)V"

    invoke-interface {p2, v0, v1, v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1098
    :cond_4
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeWithFieldName"

    .line 1099
    const-string v4, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 1098
    invoke-interface {p2, v0, v1, v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    move-object v2, v0

    goto/16 :goto_1
.end method

.method private _long(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x19

    const/4 v3, 0x2

    .line 685
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 687
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 688
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 689
    const/16 v1, 0x37

    const-string v2, "long"

    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 691
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 693
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 694
    const/16 v1, 0x15

    const-string v2, "seperator"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 695
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 696
    const/16 v1, 0x16

    const-string v2, "long"

    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 697
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;J)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 701
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 702
    return-void
.end method

.method private _nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x19

    .line 1154
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1155
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1156
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1157
    const/16 v0, 0xb8

    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applyName"

    .line 1158
    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z"

    .line 1157
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const/16 v0, 0x99

    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1160
    return-void
.end method

.method private _object(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 622
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 624
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 625
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 626
    const/16 v1, 0x3a

    const-string v2, "object"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 628
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 630
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 632
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 633
    return-void
.end method

.method private _processKey(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0x15

    const/16 v2, 0x19

    const/16 v3, 0xb8

    .line 1344
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    .line 1346
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1347
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1348
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1350
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 1351
    const-string v0, "byte"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1352
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "processKey"

    .line 1353
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Ljava/lang/String;"

    .line 1352
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    :goto_0
    const/16 v0, 0x3a

    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1416
    return-void

    .line 1354
    :cond_0
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 1355
    const-string v0, "short"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1356
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "processKey"

    .line 1357
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Ljava/lang/String;"

    .line 1356
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1358
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 1359
    const-string v0, "int"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1360
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "processKey"

    .line 1361
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;"

    .line 1360
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1362
    :cond_2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 1363
    const-string v0, "char"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1364
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "processKey"

    .line 1365
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Ljava/lang/String;"

    .line 1364
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1366
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 1367
    const/16 v0, 0x16

    const-string v1, "long"

    invoke-virtual {p3, v1, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1368
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "processKey"

    .line 1369
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/String;"

    .line 1368
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1370
    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 1371
    const/16 v0, 0x17

    const-string v1, "float"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1372
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "processKey"

    .line 1373
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Ljava/lang/String;"

    .line 1372
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1374
    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 1375
    const/16 v0, 0x18

    const-string v1, "double"

    invoke-virtual {p3, v1, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1376
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "processKey"

    .line 1377
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Ljava/lang/String;"

    .line 1376
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1378
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 1379
    const-string v0, "boolean"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1380
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "processKey"

    .line 1381
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;"

    .line 1380
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1382
    :cond_7
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_8

    .line 1383
    const-string v0, "decimal"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1385
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1386
    const-string v1, "processKey"

    .line 1387
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    .line 1384
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1388
    :cond_8
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_9

    .line 1389
    const-string v0, "string"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1391
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1392
    const-string v1, "processKey"

    .line 1393
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    .line 1390
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1394
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1395
    const-string v0, "enum"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1397
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1398
    const-string v1, "processKey"

    .line 1399
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    .line 1396
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1400
    :cond_a
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1402
    const-string v0, "list"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1404
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1405
    const-string v1, "processKey"

    .line 1406
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    .line 1403
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1408
    :cond_b
    const-string v0, "object"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1410
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1411
    const-string v1, "processKey"

    .line 1412
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    .line 1409
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private _processValue(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x3a

    const/4 v5, 0x2

    const/16 v2, 0x15

    const/16 v4, 0xb8

    const/16 v3, 0x19

    .line 1290
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    .line 1292
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1293
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1294
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1296
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 1297
    const-string v0, "byte"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1298
    const-class v0, Ljava/lang/Byte;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "valueOf"

    const-string v2, "(B)Ljava/lang/Byte;"

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    :goto_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original()I

    move-result v0

    invoke-interface {p1, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1333
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original()I

    move-result v0

    invoke-interface {p1, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1336
    const-class v0, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1337
    const-string v1, "processValue"

    .line 1338
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 1335
    invoke-interface {p1, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue()I

    move-result v0

    invoke-interface {p1, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1341
    return-void

    .line 1299
    :cond_0
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 1300
    const-string v0, "short"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1301
    const-class v0, Ljava/lang/Short;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "valueOf"

    const-string v2, "(S)Ljava/lang/Short;"

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1302
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 1303
    const-string v0, "int"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1304
    const-class v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "valueOf"

    const-string v2, "(I)Ljava/lang/Integer;"

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1305
    :cond_2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 1306
    const-string v0, "char"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1307
    const-class v0, Ljava/lang/Character;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "valueOf"

    const-string v2, "(C)Ljava/lang/Character;"

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1308
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 1309
    const/16 v0, 0x16

    const-string v1, "long"

    invoke-virtual {p3, v1, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1310
    const-class v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "valueOf"

    const-string v2, "(J)Ljava/lang/Long;"

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1311
    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 1312
    const/16 v0, 0x17

    const-string v1, "float"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1313
    const-class v0, Ljava/lang/Float;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "valueOf"

    const-string v2, "(F)Ljava/lang/Float;"

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1314
    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 1315
    const/16 v0, 0x18

    const-string v1, "double"

    invoke-virtual {p3, v1, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1316
    const-class v0, Ljava/lang/Double;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "valueOf"

    const-string v2, "(D)Ljava/lang/Double;"

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1317
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 1318
    const-string v0, "boolean"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1319
    const-class v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "valueOf"

    const-string v2, "(Z)Ljava/lang/Boolean;"

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1320
    :cond_7
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_8

    .line 1321
    const-string v0, "decimal"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    .line 1322
    :cond_8
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_9

    .line 1323
    const-string v0, "string"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    .line 1324
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1325
    const-string v0, "enum"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    .line 1326
    :cond_a
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1327
    const-string v0, "list"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    .line 1329
    :cond_b
    const-string v0, "object"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0
.end method

.method private _seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1517
    const/16 v0, 0x10

    const/16 v1, 0x2c

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1518
    const/16 v0, 0x36

    const-string v1, "seperator"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1519
    return-void
.end method

.method private _short(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x15

    .line 820
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 822
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 823
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 824
    const/16 v1, 0x36

    const-string v2, "short"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 826
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 828
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 829
    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 830
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 831
    const-string v1, "short"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 833
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;I)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 837
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 838
    return-void
.end method

.method private _string(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x19

    .line 900
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 902
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 903
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 904
    const/16 v1, 0x3a

    const-string v2, "string"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 906
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 908
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 909
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 912
    const-string v3, "string"

    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 913
    const/16 v3, 0xc7

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 915
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 917
    const/16 v3, 0xa7

    invoke-interface {p2, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 919
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 920
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 921
    const/16 v1, 0x15

    const-string v3, "seperator"

    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 922
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 923
    const-string v1, "string"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 924
    const/16 v1, 0xb6

    const-class v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "writeFieldValue"

    .line 925
    const-string v5, "(CLjava/lang/String;Ljava/lang/String;)V"

    .line 924
    invoke-interface {p2, v1, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 929
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 931
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 932
    return-void
.end method

.method private _writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0xb6

    const/16 v4, 0x19

    .line 1163
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 1165
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1167
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue()I

    move-result v2

    invoke-interface {p1, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1168
    const/16 v2, 0xc7

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1169
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1170
    const/16 v2, 0xa7

    invoke-interface {p1, v2, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1172
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1174
    const-string v1, "out"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1175
    const/16 v1, 0x15

    const-string v2, "seperator"

    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1176
    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "write"

    const-string v3, "(C)V"

    invoke-interface {p1, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const-string v1, "out"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1180
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1181
    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeFieldName"

    const-string v3, "(Ljava/lang/String;)V"

    invoke-interface {p1, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1185
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue()I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1186
    if-eqz v0, :cond_0

    .line 1187
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1188
    const-class v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "writeWithFormat"

    .line 1189
    const-string v2, "(Ljava/lang/Object;Ljava/lang/String;)V"

    .line 1188
    invoke-interface {p1, v5, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1207
    return-void

    .line 1191
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1192
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1193
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1194
    const-class v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "writeWithFieldName"

    .line 1195
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 1194
    invoke-interface {p1, v5, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1197
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1198
    const/16 v0, 0xb4

    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_asm_fieldType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1199
    const-string v3, "Ljava/lang/reflect/Type;"

    .line 1198
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-class v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "writeWithFieldName"

    .line 1202
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    .line 1201
    invoke-interface {p1, v5, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private generateWriteAsArray(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 287
    const/16 v0, 0x19

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 288
    const/16 v0, 0x10

    const/16 v1, 0x5b

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 289
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "write"

    const-string v3, "(C)V"

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    .line 293
    if-nez v4, :cond_1

    .line 294
    const/16 v0, 0x19

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 295
    const/16 v0, 0x10

    const/16 v1, 0x5d

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 296
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "write"

    const-string v3, "(C)V"

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_0
    return-void

    .line 300
    :cond_1
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_0

    .line 301
    add-int/lit8 v0, v4, -0x1

    if-ne v3, v0, :cond_3

    const/16 v0, 0x5d

    move v2, v0

    .line 303
    :goto_1
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 304
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v1

    .line 306
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 307
    const/16 v5, 0x3a

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 309
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v5, :cond_2

    .line 310
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v5, :cond_2

    .line 311
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_4

    .line 313
    :cond_2
    const/16 v1, 0x19

    const-string v5, "out"

    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 314
    invoke-direct {p0, p2, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 315
    const/16 v0, 0x10

    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 316
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeIntAndChar"

    const-string v5, "(IC)V"

    invoke-interface {p2, v0, v1, v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 301
    :cond_3
    const/16 v0, 0x2c

    move v2, v0

    goto :goto_1

    .line 318
    :cond_4
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_5

    .line 319
    const/16 v1, 0x19

    const-string v5, "out"

    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 320
    invoke-direct {p0, p2, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 321
    const/16 v0, 0x10

    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 322
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeLongAndChar"

    const-string v5, "(JC)V"

    invoke-interface {p2, v0, v1, v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 324
    :cond_5
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_6

    .line 325
    const/16 v1, 0x19

    const-string v5, "out"

    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 326
    invoke-direct {p0, p2, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 327
    const/16 v0, 0x10

    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 328
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeFloatAndChar"

    const-string v5, "(FC)V"

    invoke-interface {p2, v0, v1, v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 330
    :cond_6
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_7

    .line 331
    const/16 v1, 0x19

    const-string v5, "out"

    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 332
    invoke-direct {p0, p2, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 333
    const/16 v0, 0x10

    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 334
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeDoubleAndChar"

    const-string v5, "(DC)V"

    invoke-interface {p2, v0, v1, v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 336
    :cond_7
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_8

    .line 337
    const/16 v1, 0x19

    const-string v5, "out"

    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 338
    invoke-direct {p0, p2, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 339
    const/16 v0, 0x10

    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 340
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeBooleanAndChar"

    const-string v5, "(ZC)V"

    invoke-interface {p2, v0, v1, v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 341
    :cond_8
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v5, :cond_9

    .line 342
    const/16 v1, 0x19

    const-string v5, "out"

    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 343
    invoke-direct {p0, p2, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 344
    const/16 v0, 0x10

    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 345
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeCharacterAndChar"

    const-string v5, "(CC)V"

    invoke-interface {p2, v0, v1, v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 347
    :cond_9
    const-class v5, Ljava/lang/String;

    if-ne v1, v5, :cond_a

    .line 348
    const/16 v1, 0x19

    const-string v5, "out"

    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 349
    invoke-direct {p0, p2, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 350
    const/16 v0, 0x10

    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 351
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeString"

    .line 352
    const-string v5, "(Ljava/lang/String;C)V"

    .line 351
    invoke-interface {p2, v0, v1, v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 353
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 354
    const/16 v1, 0x19

    const-string v5, "out"

    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 355
    invoke-direct {p0, p2, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 356
    const/16 v0, 0x10

    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 357
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "writeEnum"

    const-string v5, "(Ljava/lang/Enum;C)V"

    invoke-interface {p2, v0, v1, v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 359
    :cond_b
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 361
    const/16 v5, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 362
    invoke-direct {p0, p2, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 363
    if-eqz v1, :cond_c

    .line 364
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 365
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "writeWithFormat"

    .line 366
    const-string v6, "(Ljava/lang/Object;Ljava/lang/String;)V"

    .line 365
    invoke-interface {p2, v0, v1, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :goto_3
    const/16 v0, 0x19

    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 384
    const/16 v0, 0x10

    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 385
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "write"

    const-string v5, "(C)V"

    invoke-interface {p2, v0, v1, v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 368
    :cond_c
    const/16 v1, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v5

    invoke-interface {p2, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 369
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Class;

    if-eqz v1, :cond_d

    .line 370
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 371
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "writeWithFieldName"

    .line 372
    const-string v6, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 371
    invoke-interface {p2, v0, v1, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 374
    :cond_d
    const/16 v1, 0x19

    const/4 v5, 0x0

    invoke-interface {p2, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 375
    const/16 v1, 0xb4

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_asm_fieldType"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    const-string v6, "Ljava/lang/reflect/Type;"

    .line 375
    invoke-interface {p2, v1, v5, v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "writeWithFieldName"

    .line 379
    const-string v6, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    .line 378
    invoke-interface {p2, v0, v1, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 392
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 394
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    .line 398
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 399
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 400
    const/16 v4, 0x19

    const-string v5, "out"

    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 401
    const/16 v4, 0xb2

    const-class v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PrettyFormat"

    .line 402
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "L"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 401
    invoke-interface {p2, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/16 v4, 0xb6

    const-class v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "isEnabled"

    .line 404
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(L"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")Z"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 403
    invoke-interface {p2, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/16 v4, 0x99

    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 407
    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {p2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 408
    const/16 v4, 0xb4

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "nature"

    const-class v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/16 v4, 0xc7

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 411
    invoke-direct {p0, p1, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->initNature(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 414
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 416
    const/16 v1, 0x19

    const/4 v4, 0x0

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 417
    const/16 v1, 0xb4

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nature"

    const-class v6, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v1, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/16 v1, 0x19

    const/4 v4, 0x1

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 419
    const/16 v1, 0x19

    const/4 v4, 0x2

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 420
    const/16 v1, 0x19

    const/4 v4, 0x3

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 421
    const/16 v1, 0x19

    const/4 v4, 0x4

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 422
    const/16 v1, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "write"

    .line 423
    const-string v6, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    .line 422
    invoke-interface {p2, v1, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/16 v1, 0xb1

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 426
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 432
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 433
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 435
    const/16 v4, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v5

    invoke-interface {p2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 436
    const/16 v4, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v5

    invoke-interface {p2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 437
    const/16 v4, 0xb6

    const-class v5, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "containsReference"

    .line 438
    const-string v7, "(Ljava/lang/Object;)Z"

    .line 437
    invoke-interface {p2, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/16 v4, 0x99

    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 441
    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {p2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 442
    const/16 v4, 0xb4

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "nature"

    const-class v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/16 v4, 0xc7

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 445
    invoke-direct {p0, p1, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->initNature(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 448
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 449
    const/16 v1, 0x19

    const/4 v4, 0x0

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 450
    const/16 v1, 0xb4

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nature"

    const-class v6, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v1, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/16 v1, 0x19

    const/4 v4, 0x1

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 452
    const/16 v1, 0x19

    const/4 v4, 0x2

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 453
    const/16 v1, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "writeReference"

    .line 454
    const-string v6, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V"

    .line 453
    invoke-interface {p2, v1, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/16 v1, 0xb1

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 458
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 462
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 464
    const/16 v1, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v4

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 465
    const/16 v1, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v4

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 466
    const/16 v1, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->paramFieldType()I

    move-result v4

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 467
    const/16 v1, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isWriteAsArray"

    .line 468
    const-string v6, "(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z"

    .line 467
    invoke-interface {p2, v1, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const/16 v1, 0x99

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 472
    const/16 v1, 0x19

    const/4 v4, 0x0

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 473
    const/16 v1, 0x19

    const/4 v4, 0x1

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 474
    const/16 v1, 0x19

    const/4 v4, 0x2

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 475
    const/16 v1, 0x19

    const/4 v4, 0x3

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 476
    const/16 v1, 0x19

    const/4 v4, 0x4

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 477
    const/16 v1, 0xb6

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "writeAsArray"

    .line 478
    const-string v6, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    .line 477
    invoke-interface {p2, v1, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/16 v1, 0xb1

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 482
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 486
    const/16 v0, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 487
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getContext"

    .line 488
    const-string v5, "()Lcom/alibaba/fastjson/serializer/SerialContext;"

    .line 487
    invoke-interface {p2, v0, v1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/16 v0, 0x3a

    const-string v1, "parent"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 491
    const/16 v0, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 492
    const/16 v0, 0x19

    const-string v1, "parent"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 493
    const/16 v0, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 494
    const/16 v0, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->paramFieldName()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 495
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "setContext"

    .line 496
    const-string v5, "(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 495
    invoke-interface {p2, v0, v1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 502
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 503
    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 512
    const/16 v5, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 513
    const/16 v5, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->paramFieldType()I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 514
    const/16 v5, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 515
    const/16 v5, 0xb6

    const-class v6, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "isWriteClassName"

    .line 516
    const-string v8, "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z"

    .line 515
    invoke-interface {p2, v5, v6, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/16 v5, 0x99

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 523
    const/16 v5, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->paramFieldType()I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 524
    const/16 v5, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 525
    const/16 v5, 0xb6

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getClass"

    const-string v8, "()Ljava/lang/Class;"

    invoke-interface {p2, v5, v6, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/16 v5, 0xa5

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 528
    invoke-interface {p2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 529
    const/16 v4, 0x19

    const-string v5, "out"

    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 531
    const/16 v4, 0xb6

    const-class v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "write"

    const-string v7, "(Ljava/lang/String;)V"

    invoke-interface {p2, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/16 v4, 0x10

    const/16 v5, 0x2c

    invoke-interface {p2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 533
    const/16 v4, 0xa7

    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 535
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 536
    const/16 v1, 0x10

    const/16 v4, 0x7b

    invoke-interface {p2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 538
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 541
    const/16 v0, 0x36

    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 543
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_before(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 545
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 582
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_after(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 584
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 585
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 587
    const/16 v3, 0x15

    const-string v4, "seperator"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 588
    const/16 v3, 0x10

    const/16 v4, 0x7b

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    .line 589
    const/16 v3, 0xa0

    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 591
    const/16 v3, 0x19

    const-string v4, "out"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 592
    const/16 v3, 0x10

    const/16 v4, 0x7b

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 593
    const/16 v3, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "write"

    const-string v6, "(C)V"

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 597
    const/16 v0, 0x19

    const-string v3, "out"

    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 598
    const/16 v0, 0x10

    const/16 v3, 0x7d

    invoke-interface {p2, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 599
    const/16 v0, 0xb6

    const-class v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "write"

    const-string v5, "(C)V"

    invoke-interface {p2, v0, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 602
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 604
    const/16 v0, 0x19

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 605
    const/16 v0, 0x19

    const-string v1, "parent"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 606
    const/16 v0, 0xb6

    const-class v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setContext"

    .line 607
    const-string v3, "(Lcom/alibaba/fastjson/serializer/SerialContext;)V"

    .line 606
    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void

    .line 546
    :cond_0
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 547
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v4

    .line 549
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 550
    const/16 v5, 0x3a

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v6

    invoke-interface {p2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 552
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_1

    .line 553
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_byte(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 545
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 554
    :cond_1
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_2

    .line 555
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_short(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 556
    :cond_2
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_3

    .line 557
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_int(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 558
    :cond_3
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_4

    .line 559
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_long(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 560
    :cond_4
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_5

    .line 561
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_float(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 562
    :cond_5
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_6

    .line 563
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_double(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 564
    :cond_6
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_7

    .line 565
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_boolean(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 566
    :cond_7
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_8

    .line 567
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_char(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 568
    :cond_8
    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_9

    .line 569
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_string(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 570
    :cond_9
    const-class v5, Ljava/math/BigDecimal;

    if-ne v4, v5, :cond_a

    .line 571
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_decimal(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 572
    :cond_a
    const-class v5, Ljava/util/List;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 573
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_list(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 575
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 576
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_enum(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 578
    :cond_c
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_object(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1
.end method

.method private initNature(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 612
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 613
    const/16 v0, 0xbb

    const-class v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 614
    const/16 v0, 0x59

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 615
    invoke-static {p1}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 616
    const/16 v0, 0xb7

    const-class v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<init>"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 617
    const-string v4, ")V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 616
    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const/16 v0, 0xb5

    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nature"

    const-class v3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-void
.end method


# virtual methods
.method public createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->createJavaBeanSerializer(Ljava/lang/Class;Ljava/util/Map;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    return-object v0
.end method

.method public createJavaBeanSerializer(Ljava/lang/Class;Ljava/util/Map;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupportd class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v10

    .line 124
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->getGenClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 126
    new-instance v0, Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/ClassWriter;-><init>()V

    .line 127
    const/16 v1, 0x31

    const/16 v2, 0x21

    const-string v4, "java/lang/Object"

    .line 128
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com/alibaba/fastjson/serializer/ObjectSerializer"

    aput-object v7, v5, v6

    .line 127
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x2

    const-string v2, "nature"

    const-class v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;

    move-result-object v1

    .line 132
    invoke-interface {v1}, Lcom/alibaba/fastjson/asm/FieldVisitor;->visitEnd()V

    .line 135
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 147
    const/4 v5, 0x1

    const-string v6, "<init>"

    const-string v7, "()V"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v2

    .line 148
    const/16 v1, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 149
    const/16 v1, 0xb7

    const-string v4, "java/lang/Object"

    const-string v5, "<init>"

    const-string v6, "()V"

    invoke-interface {v2, v1, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 172
    const/16 v1, 0xb1

    invoke-interface {v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 173
    const/4 v1, 0x4

    const/4 v4, 0x4

    invoke-interface {v2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 174
    invoke-interface {v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 177
    new-instance v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;-><init>(Ljava/lang/String;)V

    .line 179
    const/4 v5, 0x1

    .line 180
    const-string v6, "write"

    .line 181
    const-string v7, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    .line 182
    const/4 v8, 0x0

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "java/io/IOException"

    aput-object v4, v9, v1

    move-object v4, v0

    .line 179
    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v4

    .line 184
    const/16 v1, 0x19

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 185
    const/16 v1, 0xb6

    const-class v5, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getWriter"

    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "()"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v8, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 185
    invoke-interface {v4, v1, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/16 v1, 0x3a

    const-string v5, "out"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 189
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 191
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->alphabetic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 194
    const/16 v5, 0x19

    const-string v6, "out"

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 195
    const/16 v5, 0xb2

    const-class v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SortField"

    .line 196
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "L"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 195
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/16 v5, 0xb6

    const-class v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "isEnabled"

    .line 198
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(L"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")Z"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 197
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/16 v5, 0x99

    invoke-interface {v4, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 201
    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 202
    const/16 v5, 0x19

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 203
    const/16 v5, 0x19

    const/4 v6, 0x2

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 204
    const/16 v5, 0x19

    const/4 v6, 0x3

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 205
    const/16 v5, 0x19

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->paramFieldType()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 206
    const/16 v5, 0xb6

    const-string v6, "write1"

    .line 207
    const-string v7, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    .line 206
    invoke-interface {v4, v5, v3, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/16 v5, 0xb1

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 210
    invoke-interface {v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 213
    :cond_2
    const/16 v1, 0x19

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 214
    const/16 v1, 0xc0

    invoke-static {p1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 215
    const/16 v1, 0x3a

    const-string v5, "entity"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 216
    invoke-direct {p0, p1, v4, v10, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 217
    const/16 v1, 0xb1

    invoke-interface {v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 218
    const/4 v1, 0x5

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getVariantCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v4, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 219
    invoke-interface {v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 222
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v1

    .line 226
    new-instance v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;-><init>(Ljava/lang/String;)V

    .line 228
    const/4 v5, 0x1

    .line 229
    const-string v6, "write1"

    .line 230
    const-string v7, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    .line 231
    const/4 v8, 0x0

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v10, "java/io/IOException"

    aput-object v10, v9, v4

    move-object v4, v0

    .line 228
    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v4

    .line 233
    const/16 v5, 0x19

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 234
    const/16 v5, 0xb6

    const-class v6, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getWriter"

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "()"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 234
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/16 v5, 0x3a

    const-string v6, "out"

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 238
    const/16 v5, 0x19

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 239
    const/16 v5, 0xc0

    invoke-static {p1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 240
    const/16 v5, 0x3a

    const-string v6, "entity"

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 242
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 244
    const/16 v5, 0xb1

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 245
    const/4 v5, 0x5

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getVariantCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v4, v5, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 246
    invoke-interface {v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 251
    new-instance v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;-><init>(Ljava/lang/String;)V

    .line 253
    const/4 v5, 0x1

    .line 254
    const-string v6, "writeAsArray"

    .line 255
    const-string v7, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    .line 256
    const/4 v8, 0x0

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v10, "java/io/IOException"

    aput-object v10, v9, v4

    move-object v4, v0

    .line 253
    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v4

    .line 258
    const/16 v5, 0x19

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 259
    const/16 v5, 0xb6

    const-class v6, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getWriter"

    .line 260
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "()"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 259
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/16 v5, 0x3a

    const-string v6, "out"

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 263
    const/16 v5, 0x19

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 264
    const/16 v5, 0xc0

    invoke-static {p1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 265
    const/16 v5, 0x3a

    const-string v6, "entity"

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 266
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->generateWriteAsArray(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 267
    const/16 v1, 0xb1

    invoke-interface {v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 268
    const/4 v1, 0x5

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getVariantCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v4, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 269
    invoke-interface {v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 272
    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    const/4 v2, 0x0

    array-length v4, v0

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/alibaba/fastjson/util/ASMClassLoader;->defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 281
    check-cast v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    return-object v0

    .line 135
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 137
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_asm_fieldPrefix"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    const-string v6, "Ljava/lang/reflect/Type;"

    .line 137
    invoke-virtual {v0, v4, v5, v6}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;

    move-result-object v4

    .line 139
    invoke-interface {v4}, Lcom/alibaba/fastjson/asm/FieldVisitor;->visitEnd()V

    .line 142
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_asm_fieldType"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string v5, "Ljava/lang/reflect/Type;"

    .line 142
    invoke-virtual {v0, v4, v1, v5}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Lcom/alibaba/fastjson/asm/FieldVisitor;->visitEnd()V

    goto/16 :goto_0

    .line 153
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 154
    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 156
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 159
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 160
    const/16 v5, 0xb8

    const-class v6, Lcom/alibaba/fastjson/util/ASMUtils;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getMethodType"

    .line 161
    const-string v8, "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;"

    .line 160
    invoke-interface {v2, v5, v6, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_2
    const/16 v5, 0xb5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_asm_fieldType"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Ljava/lang/reflect/Type;"

    invoke-interface {v2, v5, v3, v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 164
    :cond_5
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 165
    const/16 v5, 0xb8

    const-class v6, Lcom/alibaba/fastjson/util/ASMUtils;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getFieldType"

    .line 166
    const-string v8, "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;"

    .line 165
    invoke-interface {v2, v5, v6, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getGenClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Serializer_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isExternalClass(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/ASMClassLoader;->isExternalClass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
