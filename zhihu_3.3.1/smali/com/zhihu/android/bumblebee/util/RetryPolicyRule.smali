.class public final enum Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;
.super Ljava/lang/Enum;
.source "RetryPolicyRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

.field public static final enum SERVER_ERROR:Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

.field public static final enum UN_SUCCESS:Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

    const-string v1, "UN_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;->UN_SUCCESS:Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

    .line 25
    new-instance v0, Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;->SERVER_ERROR:Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

    sget-object v1, Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;->UN_SUCCESS:Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;->SERVER_ERROR:Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;->$VALUES:[Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

    return-object v0
.end method

.method public static values()[Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;->$VALUES:[Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

    invoke-virtual {v0}, [Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zhihu/android/bumblebee/util/RetryPolicyRule;

    return-object v0
.end method
