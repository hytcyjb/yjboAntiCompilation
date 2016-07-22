.class public Lcom/octo/android/robospice/request/a;
.super Lcom/octo/android/robospice/request/g;
.source "CachedSpiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Lcom/octo/android/robospice/request/g",
        "<TRESU",
        "LT;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private final b:J

.field private final c:Lcom/octo/android/robospice/request/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/octo/android/robospice/request/g",
            "<TRESU",
            "LT;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/octo/android/robospice/request/g;Ljava/lang/Object;J)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/g",
            "<TRESU",
            "LT;",
            ">;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/octo/android/robospice/request/g;->d()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/octo/android/robospice/request/g;-><init>(Ljava/lang/Class;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octo/android/robospice/request/a;->d:Z

    .line 31
    iput-object p2, p0, Lcom/octo/android/robospice/request/a;->a:Ljava/lang/Object;

    .line 32
    iput-wide p3, p0, Lcom/octo/android/robospice/request/a;->b:J

    .line 33
    iput-object p1, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lcom/octo/android/robospice/request/g;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/octo/android/robospice/request/g",
            "<TRESU",
            "LT;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 205
    if-ne p0, p1, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    .line 208
    :cond_0
    if-nez p1, :cond_1

    .line 209
    const/4 v0, -0x1

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/g;->a(Lcom/octo/android/robospice/request/g;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRESU",
            "LT;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0}, Lcom/octo/android/robospice/request/g;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/g;->a(I)V

    .line 134
    return-void
.end method

.method public a(Lcom/octo/android/robospice/c/b;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/g;->a(Lcom/octo/android/robospice/c/b;)V

    .line 44
    return-void
.end method

.method a(Lcom/octo/android/robospice/request/listener/RequestStatus;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/g;->a(Lcom/octo/android/robospice/request/listener/RequestStatus;)V

    .line 124
    return-void
.end method

.method public a(Lcom/octo/android/robospice/request/listener/b;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/g;->a(Lcom/octo/android/robospice/request/listener/b;)V

    .line 102
    return-void
.end method

.method protected a(Lcom/octo/android/robospice/request/listener/e;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/g;->a(Lcom/octo/android/robospice/request/listener/e;)V

    .line 97
    return-void
.end method

.method protected a(Ljava/util/concurrent/Future;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/request/g;->a(Ljava/util/concurrent/Future;)V

    .line 82
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/octo/android/robospice/request/a;->e:Z

    .line 147
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/octo/android/robospice/request/a;->f:Z

    .line 155
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0}, Lcom/octo/android/robospice/request/g;->b()Z

    move-result v0

    return v0
.end method

.method public c()Lcom/octo/android/robospice/c/b;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0}, Lcom/octo/android/robospice/request/g;->c()Lcom/octo/android/robospice/c/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/octo/android/robospice/request/g;

    invoke-virtual {p0, p1}, Lcom/octo/android/robospice/request/a;->a(Lcom/octo/android/robospice/request/g;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TRESU",
            "LT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0}, Lcom/octo/android/robospice/request/g;->d()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/octo/android/robospice/request/a;->d:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    if-ne p0, p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 181
    goto :goto_0

    .line 184
    :cond_2
    instance-of v2, p1, Lcom/octo/android/robospice/request/a;

    if-nez v2, :cond_3

    move v0, v1

    .line 185
    goto :goto_0

    .line 187
    :cond_3
    check-cast p1, Lcom/octo/android/robospice/request/a;

    .line 188
    iget-object v2, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v2}, Lcom/octo/android/robospice/request/g;->d()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v2}, Lcom/octo/android/robospice/request/g;->d()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 189
    goto :goto_0

    .line 191
    :cond_4
    iget-object v2, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v2}, Lcom/octo/android/robospice/request/g;->d()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p1, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v3}, Lcom/octo/android/robospice/request/g;->d()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 192
    goto :goto_0

    .line 194
    :cond_5
    iget-object v2, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v2}, Lcom/octo/android/robospice/request/g;->b()Z

    move-result v2

    iget-object v3, p1, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v3}, Lcom/octo/android/robospice/request/g;->b()Z

    move-result v3

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 195
    goto :goto_0

    .line 197
    :cond_6
    iget-object v2, p0, Lcom/octo/android/robospice/request/a;->a:Ljava/lang/Object;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/octo/android/robospice/request/a;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/octo/android/robospice/request/a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    .line 198
    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0}, Lcom/octo/android/robospice/request/g;->f()V

    .line 87
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0}, Lcom/octo/android/robospice/request/g;->g()Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 168
    .line 170
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0}, Lcom/octo/android/robospice/request/g;->d()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 171
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/octo/android/robospice/request/a;->a:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 172
    return v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0}, Lcom/octo/android/robospice/request/g;->d()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/octo/android/robospice/request/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public i()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/octo/android/robospice/request/a;->b:J

    return-wide v0
.end method

.method public j()Lcom/octo/android/robospice/request/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/octo/android/robospice/request/g",
            "<TRESU",
            "LT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    return-object v0
.end method

.method k()Lcom/octo/android/robospice/request/listener/d;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0}, Lcom/octo/android/robospice/request/g;->k()Lcom/octo/android/robospice/request/listener/d;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0}, Lcom/octo/android/robospice/request/g;->l()I

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/octo/android/robospice/request/a;->e:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/octo/android/robospice/request/a;->f:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CachedSpiceRequest [requestCacheKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/octo/android/robospice/request/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cacheDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/octo/android/robospice/request/a;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spiceRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/octo/android/robospice/request/a;->c:Lcom/octo/android/robospice/request/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
