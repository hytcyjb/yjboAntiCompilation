.class public final Lcom/tencent/bugly/proguard/y;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Lcom/tencent/bugly/proguard/r;

.field private b:Lcom/tencent/bugly/proguard/l;

.field private c:Lcom/tencent/bugly/crashreport/common/strategy/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/proguard/r;Lcom/tencent/bugly/proguard/l;Lcom/tencent/bugly/crashreport/common/strategy/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/tencent/bugly/proguard/y;->a:Lcom/tencent/bugly/proguard/r;

    .line 39
    iput-object p3, p0, Lcom/tencent/bugly/proguard/y;->b:Lcom/tencent/bugly/proguard/l;

    .line 40
    iput-object p4, p0, Lcom/tencent/bugly/proguard/y;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    .line 41
    return-void
.end method

.method private a(Ljava/util/List;Lcom/tencent/bugly/proguard/x;)Lcom/tencent/bugly/proguard/x;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/w;",
            ">;",
            "Lcom/tencent/bugly/proguard/x;",
            ")",
            "Lcom/tencent/bugly/proguard/x;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 76
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v1, p2

    .line 155
    :cond_1
    :goto_0
    return-object v1

    .line 79
    :cond_2
    const/4 v1, 0x0

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/w;

    .line 85
    iget-boolean v5, v0, Lcom/tencent/bugly/proguard/w;->e:Z

    if-eqz v5, :cond_3

    .line 87
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 94
    iget-object v0, p0, Lcom/tencent/bugly/proguard/y;->b:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/l;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 95
    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 97
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v2, v3

    .line 98
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 100
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/x;

    .line 101
    if-nez v2, :cond_5

    .line 98
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_2

    .line 108
    :cond_5
    iget-object v5, v0, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 109
    iget-object v0, v0, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 113
    if-eqz v5, :cond_b

    .line 114
    array-length v6, v5

    move v0, v3

    :goto_4
    if-ge v0, v6, :cond_b

    aget-object v7, v5, v0

    .line 118
    iget-object v8, v1, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 120
    iget v8, v1, Lcom/tencent/bugly/proguard/x;->t:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lcom/tencent/bugly/proguard/x;->t:I

    .line 121
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    .line 116
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 129
    :goto_5
    if-nez v0, :cond_a

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/tencent/bugly/proguard/x;->j:Z

    .line 134
    iput v3, p2, Lcom/tencent/bugly/proguard/x;->t:I

    .line 135
    const-string v0, ""

    iput-object v0, p2, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    move-object v1, p2

    .line 139
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/w;

    .line 141
    iget-boolean v3, v0, Lcom/tencent/bugly/proguard/w;->e:Z

    if-nez v3, :cond_8

    iget-boolean v3, v0, Lcom/tencent/bugly/proguard/w;->d:Z

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v0, Lcom/tencent/bugly/proguard/w;->b:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 143
    iget v3, v1, Lcom/tencent/bugly/proguard/x;->t:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/tencent/bugly/proguard/x;->t:I

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/bugly/proguard/w;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    goto :goto_7

    .line 148
    :cond_9
    iget-wide v2, v1, Lcom/tencent/bugly/proguard/x;->r:J

    iget-wide v4, p2, Lcom/tencent/bugly/proguard/x;->r:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p2, Lcom/tencent/bugly/proguard/x;->r:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget v0, v1, Lcom/tencent/bugly/proguard/x;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/tencent/bugly/proguard/x;->t:I

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/tencent/bugly/proguard/x;->r:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/bugly/proguard/x;->s:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    goto/16 :goto_6

    :cond_b
    move-object v0, v1

    goto/16 :goto_3

    :cond_c
    move-object v0, v1

    goto/16 :goto_5
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/w;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 54
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/a;->n()J

    move-result-wide v2

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 57
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/w;

    .line 60
    iget-boolean v5, v0, Lcom/tencent/bugly/proguard/w;->d:Z

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/tencent/bugly/proguard/w;->b:J

    const-wide/32 v7, 0x5265c00

    sub-long v7, v2, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 63
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 66
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/x;)V
    .locals 9
    .parameter

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/tencent/bugly/proguard/y;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Lcom/tencent/bugly/proguard/x;)V

    .line 166
    iget-object v0, p0, Lcom/tencent/bugly/proguard/y;->b:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/l;->c()Ljava/util/List;

    move-result-object v1

    .line 167
    const/4 v0, 0x0

    .line 168
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    invoke-interface {v1, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 179
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/w;

    .line 181
    iget-object v7, p1, Lcom/tencent/bugly/proguard/x;->u:Ljava/lang/String;

    iget-object v8, v0, Lcom/tencent/bugly/proguard/w;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 183
    iget-boolean v7, v0, Lcom/tencent/bugly/proguard/w;->e:Z

    if-eqz v7, :cond_0

    move v1, v3

    .line 185
    :cond_0
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v1

    move v1, v0

    .line 187
    goto :goto_0

    .line 189
    :cond_2
    if-nez v1, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    .line 193
    :cond_3
    const-string v0, "same crash occur too much do merged!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 194
    invoke-direct {p0, v5, p1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/util/List;Lcom/tencent/bugly/proguard/x;)Lcom/tencent/bugly/proguard/x;

    move-result-object v0

    .line 195
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/tencent/bugly/proguard/x;->a:J

    .line 196
    iget-object v1, p0, Lcom/tencent/bugly/proguard/y;->b:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/proguard/x;)V

    .line 197
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    iget-object v0, p0, Lcom/tencent/bugly/proguard/y;->b:Lcom/tencent/bugly/proguard/l;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/l;->c(Ljava/util/List;)V

    .line 213
    :goto_1
    return-void

    :cond_4
    move-object v0, v4

    .line 204
    :cond_5
    iput v3, p1, Lcom/tencent/bugly/proguard/x;->l:I

    .line 205
    iget-object v1, p0, Lcom/tencent/bugly/proguard/y;->b:Lcom/tencent/bugly/proguard/l;

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/proguard/x;)V

    .line 206
    iget-object v1, p0, Lcom/tencent/bugly/proguard/y;->b:Lcom/tencent/bugly/proguard/l;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/l;->c(Ljava/util/List;)V

    .line 208
    const-string v0, "try to upload right now"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/tencent/bugly/proguard/y;->a:Lcom/tencent/bugly/proguard/r;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/y;->c:Lcom/tencent/bugly/crashreport/common/strategy/c;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/tencent/bugly/proguard/r;->a(Ljava/util/List;Lcom/tencent/bugly/crashreport/common/strategy/c;J)V

    goto :goto_1
.end method
