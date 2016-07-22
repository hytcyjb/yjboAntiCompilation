.class public Lcom/avos/avoscloud/QueryOperation;
.super Ljava/lang/Object;
.source "QueryOperation.java"


# static fields
.field public static final AND_OP:Ljava/lang/String; = "$and"

.field public static final EQUAL_OP:Ljava/lang/String; = "__eq"

.field public static final OR_OP:Ljava/lang/String; = "$or"


# instance fields
.field key:Ljava/lang/String;

.field op:Ljava/lang/String;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/avos/avoscloud/QueryOperation;->value:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p0, p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 73
    :cond_3
    check-cast p1, Lcom/avos/avoscloud/QueryOperation;

    .line 74
    iget-object v2, p0, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 75
    iget-object v2, p1, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 76
    :cond_4
    iget-object v2, p0, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 77
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 78
    iget-object v2, p1, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 79
    :cond_6
    iget-object v2, p0, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    iget-object v3, p1, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 80
    :cond_7
    iget-object v2, p0, Lcom/avos/avoscloud/QueryOperation;->value:Ljava/lang/Object;

    if-nez v2, :cond_8

    .line 81
    iget-object v2, p1, Lcom/avos/avoscloud/QueryOperation;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 82
    :cond_8
    iget-object v2, p0, Lcom/avos/avoscloud/QueryOperation;->value:Ljava/lang/Object;

    iget-object v3, p1, Lcom/avos/avoscloud/QueryOperation;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/avos/avoscloud/QueryOperation;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 60
    .line 62
    iget-object v0, p0, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 63
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/avos/avoscloud/QueryOperation;->value:Ljava/lang/Object;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 65
    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/QueryOperation;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public sameOp(Lcom/avos/avoscloud/QueryOperation;)Z
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    iget-object v1, p1, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toResult()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    const-string v1, "__eq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    const-string v1, "$or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/QueryOperation;->value:Ljava/lang/Object;

    .line 44
    :goto_0
    return-object v0

    .line 42
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/QueryOperation;->value:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/avos/avoscloud/QueryOperation;->toResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object v0
.end method
