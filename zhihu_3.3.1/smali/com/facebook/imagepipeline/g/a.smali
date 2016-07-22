.class public Lcom/facebook/imagepipeline/g/a;
.super Ljava/lang/Object;
.source "ForwardingRequestListener.java"

# interfaces
.implements Lcom/facebook/imagepipeline/g/b;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/g/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/imagepipeline/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    .line 30
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/b;

    .line 31
    iget-object v2, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 184
    const-string v0, "ForwardingRequestListener"

    invoke-static {v0, p1, p2}, Lcom/facebook/common/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 39
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/b;

    .line 42
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/g/b;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    const-string v3, "InternalListener exception in onRequestStart"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/g/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 48
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 148
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 149
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/b;

    .line 151
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/g/b;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    const-string v3, "InternalListener exception in onRequestFailure"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/g/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 157
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 130
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/b;

    .line 133
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/g/b;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    const-string v3, "InternalListener exception in onRequestSuccess"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/g/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 139
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 162
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 163
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/b;

    .line 165
    :try_start_0
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/g/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    const-string v3, "InternalListener exception in onRequestCancellation"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/g/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 171
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 53
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 54
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/b;

    .line 56
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    const-string v3, "InternalListener exception in onProducerStart"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/g/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 62
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 116
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 117
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/b;

    .line 119
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    const-string v3, "InternalListener exception in onIntermediateChunkStart"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/g/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 125
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 86
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 87
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/b;

    .line 89
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 92
    const-string v3, "InternalListener exception in onProducerFinishWithFailure"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/g/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 95
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 68
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/b;

    .line 71
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    const-string v3, "InternalListener exception in onProducerFinishWithSuccess"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/g/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 77
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 101
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 102
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/b;

    .line 104
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/g/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    const-string v3, "InternalListener exception in onProducerFinishWithCancellation"

    invoke-direct {p0, v3, v0}, Lcom/facebook/imagepipeline/g/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 110
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 175
    :goto_0
    if-ge v2, v3, :cond_1

    .line 176
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/b;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/g/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    .line 180
    :goto_1
    return v0

    .line 175
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 180
    goto :goto_1
.end method
