.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/parser/DefaultJSONParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolveTask"
.end annotation


# instance fields
.field private final context:Lcom/alibaba/fastjson/parser/ParseContext;

.field private fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

.field private final referenceValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1298
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1299
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->referenceValue:Ljava/lang/String;

    .line 1300
    return-void
.end method


# virtual methods
.method public getContext()Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    return-object v0
.end method

.method public getFieldDeserializer()Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    return-object v0
.end method

.method public getOwnerContext()Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    return-object v0
.end method

.method public getReferenceValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->referenceValue:Ljava/lang/String;

    return-object v0
.end method

.method public setFieldDeserializer(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V
    .locals 0
    .parameter

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1316
    return-void
.end method

.method public setOwnerContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 0
    .parameter

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1324
    return-void
.end method
