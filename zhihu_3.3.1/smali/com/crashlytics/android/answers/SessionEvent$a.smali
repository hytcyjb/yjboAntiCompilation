.class Lcom/crashlytics/android/answers/SessionEvent$a;
.super Ljava/lang/Object;
.source "SessionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/answers/SessionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/crashlytics/android/answers/SessionEvent$Type;

.field final b:J

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/String;

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/answers/SessionEvent$Type;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->a:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->b:J

    .line 90
    iput-object v2, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->c:Ljava/util/Map;

    .line 91
    iput-object v2, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->d:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->e:Ljava/util/Map;

    .line 93
    iput-object v2, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->f:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->g:Ljava/util/Map;

    .line 95
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Lcom/crashlytics/android/answers/SessionEvent$a;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/crashlytics/android/answers/SessionEvent$a;"
        }
    .end annotation

    .prologue
    .line 98
    iput-object p1, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->c:Ljava/util/Map;

    .line 99
    return-object p0
.end method

.method public a(Lcom/crashlytics/android/answers/r;)Lcom/crashlytics/android/answers/SessionEvent;
    .locals 11
    .parameter

    .prologue
    .line 123
    new-instance v0, Lcom/crashlytics/android/answers/SessionEvent;

    iget-wide v2, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->b:J

    iget-object v4, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->a:Lcom/crashlytics/android/answers/SessionEvent$Type;

    iget-object v5, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->c:Ljava/util/Map;

    iget-object v6, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->e:Ljava/util/Map;

    iget-object v8, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/crashlytics/android/answers/SessionEvent$a;->g:Ljava/util/Map;

    const/4 v10, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/answers/SessionEvent;-><init>(Lcom/crashlytics/android/answers/r;JLcom/crashlytics/android/answers/SessionEvent$Type;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/crashlytics/android/answers/SessionEvent$1;)V

    return-object v0
.end method
