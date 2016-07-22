.class Lcom/crashlytics/android/answers/m;
.super Ljava/lang/Object;
.source "SamplingEventFilter.java"

# interfaces
.implements Lcom/crashlytics/android/answers/i;


# static fields
.field static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/crashlytics/android/answers/SessionEvent$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/crashlytics/android/answers/SamplingEventFilter$1;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/SamplingEventFilter$1;-><init>()V

    sput-object v0, Lcom/crashlytics/android/answers/m;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/crashlytics/android/answers/m;->a:I

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/crashlytics/android/answers/SessionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    sget-object v0, Lcom/crashlytics/android/answers/m;->b:Ljava/util/Set;

    iget-object v3, p1, Lcom/crashlytics/android/answers/SessionEvent;->c:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/crashlytics/android/answers/SessionEvent;->a:Lcom/crashlytics/android/answers/r;

    iget-object v0, v0, Lcom/crashlytics/android/answers/r;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 34
    :goto_0
    iget-object v3, p1, Lcom/crashlytics/android/answers/SessionEvent;->a:Lcom/crashlytics/android/answers/r;

    iget-object v3, v3, Lcom/crashlytics/android/answers/r;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget v4, p0, Lcom/crashlytics/android/answers/m;->a:I

    rem-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    .line 36
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 32
    goto :goto_0

    :cond_1
    move v3, v2

    .line 35
    goto :goto_1

    :cond_2
    move v1, v2

    .line 36
    goto :goto_2
.end method
