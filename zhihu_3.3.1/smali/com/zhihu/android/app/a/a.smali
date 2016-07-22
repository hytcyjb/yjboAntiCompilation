.class public Lcom/zhihu/android/app/a/a;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field private final a:Lcom/zhihu/android/api/model/Token;

.field private final b:Lcom/zhihu/android/api/model/People;


# direct methods
.method public constructor <init>(Lcom/zhihu/android/api/model/Token;Lcom/zhihu/android/api/model/People;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/zhihu/android/app/a/a;->a:Lcom/zhihu/android/api/model/Token;

    .line 34
    iput-object p2, p0, Lcom/zhihu/android/app/a/a;->b:Lcom/zhihu/android/api/model/People;

    .line 36
    iget-object v0, p0, Lcom/zhihu/android/app/a/a;->a:Lcom/zhihu/android/api/model/Token;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Token;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhihu/android/app/a/a;->b:Lcom/zhihu/android/api/model/People;

    iget-object v1, v1, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/a/a;->a:Lcom/zhihu/android/api/model/Token;

    iget-object v2, v2, Lcom/zhihu/android/api/model/Token;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] and People"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zhihu/android/app/a/a;->b:Lcom/zhihu/android/api/model/People;

    iget-object v2, v2, Lcom/zhihu/android/api/model/People;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not the same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zhihu/android/app/a/a;->a:Lcom/zhihu/android/api/model/Token;

    iget-wide v0, v0, Lcom/zhihu/android/api/model/Token;->userId:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zhihu/android/app/a/a;->a:Lcom/zhihu/android/api/model/Token;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Token;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zhihu/android/app/a/a;->a:Lcom/zhihu/android/api/model/Token;

    iget-object v0, v0, Lcom/zhihu/android/api/model/Token;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/zhihu/android/api/model/Token;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zhihu/android/app/a/a;->a:Lcom/zhihu/android/api/model/Token;

    return-object v0
.end method

.method public e()Lcom/zhihu/android/api/model/People;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zhihu/android/app/a/a;->b:Lcom/zhihu/android/api/model/People;

    return-object v0
.end method
