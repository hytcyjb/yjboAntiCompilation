.class final enum Lcom/squareup/protoparser/ProtoSchemaParser$Context;
.super Ljava/lang/Enum;
.source "ProtoSchemaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/protoparser/ProtoSchemaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Context"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/protoparser/ProtoSchemaParser$Context;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/protoparser/ProtoSchemaParser$Context;

.field public static final enum ENUM:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

.field public static final enum EXTEND:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

.field public static final enum FILE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

.field public static final enum MESSAGE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

.field public static final enum RPC:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

.field public static final enum SERVICE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 747
    new-instance v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v3}, Lcom/squareup/protoparser/ProtoSchemaParser$Context;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->FILE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    .line 748
    new-instance v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1, v4}, Lcom/squareup/protoparser/ProtoSchemaParser$Context;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->MESSAGE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    .line 749
    new-instance v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    const-string v1, "ENUM"

    invoke-direct {v0, v1, v5}, Lcom/squareup/protoparser/ProtoSchemaParser$Context;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->ENUM:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    .line 750
    new-instance v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    const-string v1, "RPC"

    invoke-direct {v0, v1, v6}, Lcom/squareup/protoparser/ProtoSchemaParser$Context;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->RPC:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    .line 751
    new-instance v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    const-string v1, "EXTEND"

    invoke-direct {v0, v1, v7}, Lcom/squareup/protoparser/ProtoSchemaParser$Context;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->EXTEND:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    .line 752
    new-instance v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    const-string v1, "SERVICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/squareup/protoparser/ProtoSchemaParser$Context;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->SERVICE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    .line 746
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    sget-object v1, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->FILE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->MESSAGE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->ENUM:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->RPC:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->EXTEND:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->SERVICE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->$VALUES:[Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 746
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/protoparser/ProtoSchemaParser$Context;
    .locals 1
    .parameter "name"

    .prologue
    .line 746
    const-class v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    return-object v0
.end method

.method public static values()[Lcom/squareup/protoparser/ProtoSchemaParser$Context;
    .locals 1

    .prologue
    .line 746
    sget-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->$VALUES:[Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    invoke-virtual {v0}, [Lcom/squareup/protoparser/ProtoSchemaParser$Context;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    return-object v0
.end method


# virtual methods
.method public permitsExtensions()Z
    .locals 1

    .prologue
    .line 767
    sget-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->FILE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public permitsField()Z
    .locals 1

    .prologue
    .line 763
    sget-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->MESSAGE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->EXTEND:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public permitsImport()Z
    .locals 1

    .prologue
    .line 759
    sget-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->FILE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public permitsPackage()Z
    .locals 1

    .prologue
    .line 755
    sget-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->FILE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public permitsRpc()Z
    .locals 1

    .prologue
    .line 771
    sget-object v0, Lcom/squareup/protoparser/ProtoSchemaParser$Context;->SERVICE:Lcom/squareup/protoparser/ProtoSchemaParser$Context;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
