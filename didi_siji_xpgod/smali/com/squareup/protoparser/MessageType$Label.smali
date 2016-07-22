.class public final enum Lcom/squareup/protoparser/MessageType$Label;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/protoparser/MessageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/protoparser/MessageType$Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/protoparser/MessageType$Label;

.field public static final enum OPTIONAL:Lcom/squareup/protoparser/MessageType$Label;

.field public static final enum REPEATED:Lcom/squareup/protoparser/MessageType$Label;

.field public static final enum REQUIRED:Lcom/squareup/protoparser/MessageType$Label;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    new-instance v0, Lcom/squareup/protoparser/MessageType$Label;

    const-string v1, "OPTIONAL"

    invoke-direct {v0, v1, v2}, Lcom/squareup/protoparser/MessageType$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/protoparser/MessageType$Label;->OPTIONAL:Lcom/squareup/protoparser/MessageType$Label;

    new-instance v0, Lcom/squareup/protoparser/MessageType$Label;

    const-string v1, "REQUIRED"

    invoke-direct {v0, v1, v3}, Lcom/squareup/protoparser/MessageType$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/protoparser/MessageType$Label;->REQUIRED:Lcom/squareup/protoparser/MessageType$Label;

    new-instance v0, Lcom/squareup/protoparser/MessageType$Label;

    const-string v1, "REPEATED"

    invoke-direct {v0, v1, v4}, Lcom/squareup/protoparser/MessageType$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/protoparser/MessageType$Label;->REPEATED:Lcom/squareup/protoparser/MessageType$Label;

    .line 141
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/squareup/protoparser/MessageType$Label;

    sget-object v1, Lcom/squareup/protoparser/MessageType$Label;->OPTIONAL:Lcom/squareup/protoparser/MessageType$Label;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/protoparser/MessageType$Label;->REQUIRED:Lcom/squareup/protoparser/MessageType$Label;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/protoparser/MessageType$Label;->REPEATED:Lcom/squareup/protoparser/MessageType$Label;

    aput-object v1, v0, v4

    sput-object v0, Lcom/squareup/protoparser/MessageType$Label;->$VALUES:[Lcom/squareup/protoparser/MessageType$Label;

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
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/protoparser/MessageType$Label;
    .locals 1
    .parameter "name"

    .prologue
    .line 141
    const-class v0, Lcom/squareup/protoparser/MessageType$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/protoparser/MessageType$Label;

    return-object v0
.end method

.method public static values()[Lcom/squareup/protoparser/MessageType$Label;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/squareup/protoparser/MessageType$Label;->$VALUES:[Lcom/squareup/protoparser/MessageType$Label;

    invoke-virtual {v0}, [Lcom/squareup/protoparser/MessageType$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/protoparser/MessageType$Label;

    return-object v0
.end method
