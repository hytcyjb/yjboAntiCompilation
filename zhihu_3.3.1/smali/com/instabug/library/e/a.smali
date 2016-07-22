.class public final Lcom/instabug/library/e/a;
.super Ljava/lang/Object;
.source "Issue.java"


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lorg/json/JSONObject;

.field private l:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/instabug/library/e/a;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/instabug/library/e/a;->h:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/instabug/library/e/a;->d:I

    packed-switch v0, :pswitch_data_0

    .line 63
    const-string v0, "bug"

    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    const-string v0, "bug"

    goto :goto_0

    .line 59
    :pswitch_1
    const-string v0, "crash"

    goto :goto_0

    .line 61
    :pswitch_2
    const-string v0, "feedback"

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 120
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Type has to be TYPE_BUG or TYPE_CRASH or TYPE_FEEDBACK"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iput p1, p0, Lcom/instabug/library/e/a;->d:I

    .line 123
    return-void
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/instabug/library/e/a;->a:J

    .line 169
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/instabug/library/e/a;->l:Landroid/graphics/Bitmap;

    .line 73
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instabug/library/e/a;->k:Lorg/json/JSONObject;

    .line 160
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/instabug/library/e/a;->k:Lorg/json/JSONObject;

    .line 150
    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instabug/library/e/a;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput p1, p0, Lcom/instabug/library/e/a;->c:I

    .line 205
    return-void
.end method

.method public final b(J)V
    .locals 1
    .parameter

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/instabug/library/e/a;->b:J

    .line 187
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/instabug/library/e/a;->i:Ljava/lang/String;

    .line 259
    iget v0, p0, Lcom/instabug/library/e/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/library/e/a;->g:I

    .line 260
    return-void
.end method

.method public final c(I)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput p1, p0, Lcom/instabug/library/e/a;->e:I

    .line 223
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/instabug/library/e/a;->j:Ljava/lang/String;

    .line 299
    iget v0, p0, Lcom/instabug/library/e/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/library/e/a;->g:I

    .line 300
    return-void
.end method

.method public final declared-synchronized c()Z
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/instabug/library/e/a;->h:I

    iget v1, p0, Lcom/instabug/library/e/a;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/instabug/library/e/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/library/e/a;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(I)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput p1, p0, Lcom/instabug/library/e/a;->f:I

    .line 241
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/instabug/library/e/a;->a:J

    return-wide v0
.end method

.method public final f()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/instabug/library/e/a;->k:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/instabug/library/e/a;->b:J

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/instabug/library/e/a;->c:I

    return v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/instabug/library/e/a;->e:I

    return v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/instabug/library/e/a;->f:I

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/instabug/library/e/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/instabug/library/e/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v1, " Internal ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-wide v2, p0, Lcom/instabug/library/e/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, " Instabug ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-wide v2, p0, Lcom/instabug/library/e/a;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ", Sent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/instabug/library/e/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", photoUploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget v1, p0, Lcom/instabug/library/e/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ", fileUploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v1, p0, Lcom/instabug/library/e/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", processedFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Lcom/instabug/library/e/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ", totalFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/4 v1, 0x1

    iput v1, p0, Lcom/instabug/library/e/a;->g:I

    iget-object v1, p0, Lcom/instabug/library/e/a;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instabug/library/e/a;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/instabug/library/e/a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/instabug/library/e/a;->g:I

    :cond_0
    iget-object v1, p0, Lcom/instabug/library/e/a;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/instabug/library/e/a;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/instabug/library/e/a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/instabug/library/e/a;->g:I

    :cond_1
    iget v1, p0, Lcom/instabug/library/e/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
