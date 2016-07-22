.class public final enum Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;
.super Ljava/lang/Enum;
.source "Framedata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/java_websocket/framing/Framedata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Opcode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

.field public static final enum BINARY:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

.field public static final enum CLOSING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

.field public static final enum CONTINUOUS:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

.field public static final enum PING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

.field public static final enum PONG:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

.field public static final enum TEXT:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    const-string v1, "CONTINUOUS"

    invoke-direct {v0, v1, v3}, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v4}, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    const-string v1, "BINARY"

    invoke-direct {v0, v1, v5}, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->BINARY:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    const-string v1, "PING"

    invoke-direct {v0, v1, v6}, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    const-string v1, "PONG"

    invoke-direct {v0, v1, v7}, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    const-string v1, "CLOSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    sget-object v1, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->TEXT:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->BINARY:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->CLOSING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->$VALUES:[Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    return-object v0
.end method

.method public static values()[Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->$VALUES:[Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    return-object v0
.end method
