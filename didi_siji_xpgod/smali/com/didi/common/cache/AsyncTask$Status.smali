.class public final enum Lcom/didi/common/cache/AsyncTask$Status;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/cache/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/common/cache/AsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/common/cache/AsyncTask$Status;

.field public static final enum FINISHED:Lcom/didi/common/cache/AsyncTask$Status;

.field public static final enum PENDING:Lcom/didi/common/cache/AsyncTask$Status;

.field public static final enum RUNNING:Lcom/didi/common/cache/AsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    new-instance v0, Lcom/didi/common/cache/AsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/didi/common/cache/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/cache/AsyncTask$Status;->PENDING:Lcom/didi/common/cache/AsyncTask$Status;

    .line 286
    new-instance v0, Lcom/didi/common/cache/AsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/didi/common/cache/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/cache/AsyncTask$Status;->RUNNING:Lcom/didi/common/cache/AsyncTask$Status;

    .line 290
    new-instance v0, Lcom/didi/common/cache/AsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/didi/common/cache/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/common/cache/AsyncTask$Status;->FINISHED:Lcom/didi/common/cache/AsyncTask$Status;

    .line 278
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/didi/common/cache/AsyncTask$Status;

    sget-object v1, Lcom/didi/common/cache/AsyncTask$Status;->PENDING:Lcom/didi/common/cache/AsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/common/cache/AsyncTask$Status;->RUNNING:Lcom/didi/common/cache/AsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/common/cache/AsyncTask$Status;->FINISHED:Lcom/didi/common/cache/AsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/didi/common/cache/AsyncTask$Status;->$VALUES:[Lcom/didi/common/cache/AsyncTask$Status;

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
    .line 278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/common/cache/AsyncTask$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 278
    const-class v0, Lcom/didi/common/cache/AsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/common/cache/AsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/didi/common/cache/AsyncTask$Status;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/didi/common/cache/AsyncTask$Status;->$VALUES:[Lcom/didi/common/cache/AsyncTask$Status;

    invoke-virtual {v0}, [Lcom/didi/common/cache/AsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/common/cache/AsyncTask$Status;

    return-object v0
.end method
