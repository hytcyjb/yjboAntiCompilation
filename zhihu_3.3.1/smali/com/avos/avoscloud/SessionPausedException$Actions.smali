.class public final enum Lcom/avos/avoscloud/SessionPausedException$Actions;
.super Ljava/lang/Enum;
.source "SessionPausedException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/SessionPausedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Actions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avos/avoscloud/SessionPausedException$Actions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/SessionPausedException$Actions;

.field public static final enum INVITE:Lcom/avos/avoscloud/SessionPausedException$Actions;

.field public static final enum JOIN:Lcom/avos/avoscloud/SessionPausedException$Actions;

.field public static final enum KICK:Lcom/avos/avoscloud/SessionPausedException$Actions;

.field public static final enum QUIT:Lcom/avos/avoscloud/SessionPausedException$Actions;

.field public static final enum SEND_MESSAGE:Lcom/avos/avoscloud/SessionPausedException$Actions;

.field public static final enum UNWATCH:Lcom/avos/avoscloud/SessionPausedException$Actions;

.field public static final enum WATCH:Lcom/avos/avoscloud/SessionPausedException$Actions;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/avos/avoscloud/SessionPausedException$Actions;

    const-string v1, "SEND_MESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/avos/avoscloud/SessionPausedException$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/SessionPausedException$Actions;->SEND_MESSAGE:Lcom/avos/avoscloud/SessionPausedException$Actions;

    new-instance v0, Lcom/avos/avoscloud/SessionPausedException$Actions;

    const-string v1, "WATCH"

    invoke-direct {v0, v1, v4}, Lcom/avos/avoscloud/SessionPausedException$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/SessionPausedException$Actions;->WATCH:Lcom/avos/avoscloud/SessionPausedException$Actions;

    new-instance v0, Lcom/avos/avoscloud/SessionPausedException$Actions;

    const-string v1, "UNWATCH"

    invoke-direct {v0, v1, v5}, Lcom/avos/avoscloud/SessionPausedException$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/SessionPausedException$Actions;->UNWATCH:Lcom/avos/avoscloud/SessionPausedException$Actions;

    new-instance v0, Lcom/avos/avoscloud/SessionPausedException$Actions;

    const-string v1, "JOIN"

    invoke-direct {v0, v1, v6}, Lcom/avos/avoscloud/SessionPausedException$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/SessionPausedException$Actions;->JOIN:Lcom/avos/avoscloud/SessionPausedException$Actions;

    new-instance v0, Lcom/avos/avoscloud/SessionPausedException$Actions;

    const-string v1, "KICK"

    invoke-direct {v0, v1, v7}, Lcom/avos/avoscloud/SessionPausedException$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/SessionPausedException$Actions;->KICK:Lcom/avos/avoscloud/SessionPausedException$Actions;

    new-instance v0, Lcom/avos/avoscloud/SessionPausedException$Actions;

    const-string v1, "INVITE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/SessionPausedException$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/SessionPausedException$Actions;->INVITE:Lcom/avos/avoscloud/SessionPausedException$Actions;

    new-instance v0, Lcom/avos/avoscloud/SessionPausedException$Actions;

    const-string v1, "QUIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/SessionPausedException$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avos/avoscloud/SessionPausedException$Actions;->QUIT:Lcom/avos/avoscloud/SessionPausedException$Actions;

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/avos/avoscloud/SessionPausedException$Actions;

    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->SEND_MESSAGE:Lcom/avos/avoscloud/SessionPausedException$Actions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->WATCH:Lcom/avos/avoscloud/SessionPausedException$Actions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->UNWATCH:Lcom/avos/avoscloud/SessionPausedException$Actions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->JOIN:Lcom/avos/avoscloud/SessionPausedException$Actions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->KICK:Lcom/avos/avoscloud/SessionPausedException$Actions;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avos/avoscloud/SessionPausedException$Actions;->INVITE:Lcom/avos/avoscloud/SessionPausedException$Actions;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avos/avoscloud/SessionPausedException$Actions;->QUIT:Lcom/avos/avoscloud/SessionPausedException$Actions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avos/avoscloud/SessionPausedException$Actions;->$VALUES:[Lcom/avos/avoscloud/SessionPausedException$Actions;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/SessionPausedException$Actions;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/SessionPausedException$Actions;

    return-object v0
.end method

.method public static values()[Lcom/avos/avoscloud/SessionPausedException$Actions;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/avos/avoscloud/SessionPausedException$Actions;->$VALUES:[Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/SessionPausedException$Actions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/SessionPausedException$Actions;

    return-object v0
.end method
