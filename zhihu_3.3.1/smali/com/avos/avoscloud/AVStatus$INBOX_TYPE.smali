.class public final enum Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;
.super Ljava/lang/Enum;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INBOX_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

.field public static final enum PRIVATE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

.field public static final enum TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    const-string v1, "TIMELINE"

    const-string v2, "default"

    invoke-direct {v0, v1, v3, v2}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    new-instance v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    const-string v1, "PRIVATE"

    const-string v2, "private"

    invoke-direct {v0, v1, v4, v2}, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->PRIVATE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    sget-object v1, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->TIMELINE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->PRIVATE:Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->$VALUES:[Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->type:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;
    .locals 1
    .parameter

    .prologue
    .line 37
    const-class v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->$VALUES:[Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$INBOX_TYPE;->type:Ljava/lang/String;

    return-object v0
.end method
