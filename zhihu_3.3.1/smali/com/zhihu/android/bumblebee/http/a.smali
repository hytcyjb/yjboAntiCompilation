.class public Lcom/zhihu/android/bumblebee/http/a;
.super Ljava/lang/Object;
.source "Bumblebee.java"

# interfaces
.implements Lcom/zhihu/android/bumblebee/http/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/bumblebee/http/a$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/api/client/json/JsonFactory;

.field private final b:Lcom/octo/android/robospice/a;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lcom/zhihu/android/bumblebee/http/h;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
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

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/bumblebee/http/f;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/zhihu/android/bumblebee/http/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->c:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->d:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->e:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/google/api/client/json/jackson2/JacksonFactory;

    invoke-direct {v0}, Lcom/google/api/client/json/jackson2/JacksonFactory;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->a:Lcom/google/api/client/json/JsonFactory;

    .line 70
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->a:Lcom/google/api/client/json/JsonFactory;

    invoke-static {v0, p1}, Lcom/zhihu/android/bumblebee/http/BumblebeeService;->a(Lcom/google/api/client/json/JsonFactory;[Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 72
    new-instance v0, Lcom/octo/android/robospice/a;

    const-class v1, Lcom/zhihu/android/bumblebee/http/BumblebeeService;

    invoke-direct {v0, v1}, Lcom/octo/android/robospice/a;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/bumblebee/http/a;)Lcom/octo/android/robospice/a;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/zhihu/android/bumblebee/http/h;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/zhihu/android/bumblebee/http/a;->b(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/zhihu/android/bumblebee/http/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/zhihu/android/bumblebee/http/a;Lcom/zhihu/android/bumblebee/http/h;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/zhihu/android/bumblebee/http/a;->a(Lcom/zhihu/android/bumblebee/http/h;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/zhihu/android/bumblebee/http/h;)Ljava/lang/Object;
    .locals 12
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v10, -0x1

    .line 215
    new-instance v2, Lcom/zhihu/android/bumblebee/http/b;

    invoke-virtual {p1}, Lcom/zhihu/android/bumblebee/http/h;->r()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, p1, v0}, Lcom/zhihu/android/bumblebee/http/b;-><init>(Lcom/zhihu/android/bumblebee/http/a;Lcom/zhihu/android/bumblebee/http/h;Ljava/lang/Class;)V

    .line 217
    new-instance v9, Lcom/zhihu/android/bumblebee/http/c;

    invoke-direct {v9, v2}, Lcom/zhihu/android/bumblebee/http/c;-><init>(Lcom/zhihu/android/bumblebee/http/b;)V

    .line 219
    invoke-virtual {p1}, Lcom/zhihu/android/bumblebee/http/h;->s()Lcom/zhihu/android/bumblebee/b/c;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lcom/zhihu/android/bumblebee/http/h;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {p1}, Lcom/zhihu/android/bumblebee/http/h;->k()Lcom/zhihu/android/bumblebee/util/CacheType;

    move-result-object v1

    .line 225
    sget-object v3, Lcom/zhihu/android/bumblebee/http/a$5;->a:[I

    invoke-virtual {v1}, Lcom/zhihu/android/bumblebee/util/CacheType;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 476
    iget-object v1, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    new-instance v3, Lcom/zhihu/android/bumblebee/http/a$3;

    invoke-direct {v3, p0, v0}, Lcom/zhihu/android/bumblebee/http/a$3;-><init>(Lcom/zhihu/android/bumblebee/http/a;Lcom/zhihu/android/bumblebee/b/c;)V

    invoke-virtual {v1, v2, v3}, Lcom/octo/android/robospice/a;->a(Lcom/octo/android/robospice/request/g;Lcom/octo/android/robospice/request/listener/c;)V

    .line 511
    :goto_0
    return-object v9

    .line 228
    :pswitch_0
    iget-object v1, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    invoke-virtual {v2}, Lcom/zhihu/android/bumblebee/http/b;->h()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/zhihu/android/bumblebee/http/a$1;

    invoke-direct {v6, p0, v0}, Lcom/zhihu/android/bumblebee/http/a$1;-><init>(Lcom/zhihu/android/bumblebee/http/a;Lcom/zhihu/android/bumblebee/b/c;)V

    invoke-virtual/range {v1 .. v6}, Lcom/octo/android/robospice/a;->b(Lcom/octo/android/robospice/request/g;Ljava/lang/Object;JLcom/octo/android/robospice/request/listener/c;)V

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v1, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    invoke-virtual {v2}, Lcom/zhihu/android/bumblebee/http/b;->h()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/zhihu/android/bumblebee/http/a$6;

    invoke-direct {v6, p0, v0}, Lcom/zhihu/android/bumblebee/http/a$6;-><init>(Lcom/zhihu/android/bumblebee/http/a;Lcom/zhihu/android/bumblebee/b/c;)V

    move-wide v4, v10

    invoke-virtual/range {v1 .. v6}, Lcom/octo/android/robospice/a;->b(Lcom/octo/android/robospice/request/g;Ljava/lang/Object;JLcom/octo/android/robospice/request/listener/c;)V

    goto :goto_0

    .line 260
    :pswitch_2
    iget-object v1, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    invoke-virtual {v2}, Lcom/zhihu/android/bumblebee/http/b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zhihu/android/bumblebee/http/h;->l()J

    move-result-wide v4

    new-instance v6, Lcom/zhihu/android/bumblebee/http/a$7;

    invoke-direct {v6, p0, v0}, Lcom/zhihu/android/bumblebee/http/a$7;-><init>(Lcom/zhihu/android/bumblebee/http/a;Lcom/zhihu/android/bumblebee/b/c;)V

    invoke-virtual/range {v1 .. v6}, Lcom/octo/android/robospice/a;->b(Lcom/octo/android/robospice/request/g;Ljava/lang/Object;JLcom/octo/android/robospice/request/listener/c;)V

    goto :goto_0

    .line 276
    :pswitch_3
    iget-object v1, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    invoke-virtual {v2}, Lcom/zhihu/android/bumblebee/http/b;->h()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/zhihu/android/bumblebee/http/a$8;

    invoke-direct {v6, p0, v0}, Lcom/zhihu/android/bumblebee/http/a$8;-><init>(Lcom/zhihu/android/bumblebee/http/a;Lcom/zhihu/android/bumblebee/b/c;)V

    move-wide v4, v10

    invoke-virtual/range {v1 .. v6}, Lcom/octo/android/robospice/a;->a(Lcom/octo/android/robospice/request/g;Ljava/lang/Object;JLcom/octo/android/robospice/request/listener/c;)V

    goto :goto_0

    .line 293
    :pswitch_4
    check-cast v0, Lcom/zhihu/android/bumblebee/b/a;

    .line 295
    iget-object v1, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    invoke-virtual {v2}, Lcom/zhihu/android/bumblebee/http/b;->d()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v2}, Lcom/zhihu/android/bumblebee/http/b;->h()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/zhihu/android/bumblebee/http/a$9;

    invoke-direct {v6, p0, v0}, Lcom/zhihu/android/bumblebee/http/a$9;-><init>(Lcom/zhihu/android/bumblebee/http/a;Lcom/zhihu/android/bumblebee/b/a;)V

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/octo/android/robospice/a;->a(Ljava/lang/Class;Ljava/lang/Object;JLcom/octo/android/robospice/request/listener/c;)V

    goto :goto_0

    .line 319
    :pswitch_5
    iget-object v1, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    new-instance v3, Lcom/zhihu/android/bumblebee/http/a$10;

    invoke-direct {v3, p0, v0}, Lcom/zhihu/android/bumblebee/http/a$10;-><init>(Lcom/zhihu/android/bumblebee/http/a;Lcom/zhihu/android/bumblebee/b/c;)V

    invoke-virtual {v1, v2, v3}, Lcom/octo/android/robospice/a;->a(Lcom/octo/android/robospice/request/g;Lcom/octo/android/robospice/request/listener/c;)V

    goto :goto_0

    .line 336
    :pswitch_6
    check-cast v0, Lcom/zhihu/android/bumblebee/b/a;

    .line 338
    iget-object v1, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    invoke-virtual {v2}, Lcom/zhihu/android/bumblebee/http/b;->d()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v2}, Lcom/zhihu/android/bumblebee/http/b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zhihu/android/bumblebee/http/h;->l()J

    move-result-wide v4

    new-instance v6, Lcom/zhihu/android/bumblebee/http/a$11;

    invoke-direct {v6, p0, v0, v2}, Lcom/zhihu/android/bumblebee/http/a$11;-><init>(Lcom/zhihu/android/bumblebee/http/a;Lcom/zhihu/android/bumblebee/b/a;Lcom/zhihu/android/bumblebee/http/b;)V

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/octo/android/robospice/a;->a(Ljava/lang/Class;Ljava/lang/Object;JLcom/octo/android/robospice/request/listener/c;)V

    goto :goto_0

    .line 393
    :pswitch_7
    check-cast v0, Lcom/zhihu/android/bumblebee/b/a;

    .line 395
    iget-object v1, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    invoke-virtual {v2}, Lcom/zhihu/android/bumblebee/http/b;->h()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/zhihu/android/bumblebee/http/a$12;

    invoke-direct {v6, p0, v0, v2, p1}, Lcom/zhihu/android/bumblebee/http/a$12;-><init>(Lcom/zhihu/android/bumblebee/http/a;Lcom/zhihu/android/bumblebee/b/a;Lcom/zhihu/android/bumblebee/http/b;Lcom/zhihu/android/bumblebee/http/h;)V

    move-wide v4, v10

    invoke-virtual/range {v1 .. v6}, Lcom/octo/android/robospice/a;->a(Lcom/octo/android/robospice/request/g;Ljava/lang/Object;JLcom/octo/android/robospice/request/listener/c;)V

    goto/16 :goto_0

    .line 435
    :pswitch_8
    check-cast v0, Lcom/zhihu/android/bumblebee/b/a;

    .line 437
    iget-object v3, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    invoke-virtual {v2}, Lcom/zhihu/android/bumblebee/http/b;->d()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2}, Lcom/zhihu/android/bumblebee/http/b;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/zhihu/android/bumblebee/http/h;->l()J

    move-result-wide v6

    new-instance v8, Lcom/zhihu/android/bumblebee/http/a$13;

    invoke-direct {v8, p0, v0}, Lcom/zhihu/android/bumblebee/http/a$13;-><init>(Lcom/zhihu/android/bumblebee/http/a;Lcom/zhihu/android/bumblebee/b/a;)V

    invoke-virtual/range {v3 .. v8}, Lcom/octo/android/robospice/a;->a(Ljava/lang/Class;Ljava/lang/Object;JLcom/octo/android/robospice/request/listener/c;)V

    .line 459
    iget-object v1, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    invoke-virtual {v2}, Lcom/zhihu/android/bumblebee/http/b;->h()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/zhihu/android/bumblebee/http/a$2;

    invoke-direct {v6, p0, v0}, Lcom/zhihu/android/bumblebee/http/a$2;-><init>(Lcom/zhihu/android/bumblebee/http/a;Lcom/zhihu/android/bumblebee/b/a;)V

    move-wide v4, v10

    invoke-virtual/range {v1 .. v6}, Lcom/octo/android/robospice/a;->a(Lcom/octo/android/robospice/request/g;Ljava/lang/Object;JLcom/octo/android/robospice/request/listener/c;)V

    goto/16 :goto_0

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    new-instance v3, Lcom/zhihu/android/bumblebee/http/a$4;

    invoke-direct {v3, p0, v0}, Lcom/zhihu/android/bumblebee/http/a$4;-><init>(Lcom/zhihu/android/bumblebee/http/a;Lcom/zhihu/android/bumblebee/b/c;)V

    invoke-virtual {v1, v2, v3}, Lcom/octo/android/robospice/a;->a(Lcom/octo/android/robospice/request/g;Lcom/octo/android/robospice/request/listener/c;)V

    goto/16 :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static b(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/zhihu/android/bumblebee/http/h;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lcom/zhihu/android/bumblebee/http/h;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/zhihu/android/bumblebee/http/h;"
        }
    .end annotation

    .prologue
    .line 179
    monitor-enter p1

    .line 181
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/bumblebee/http/h;

    .line 183
    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/zhihu/android/bumblebee/http/h;

    invoke-direct {v0, p0, p2}, Lcom/zhihu/android/bumblebee/http/h;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 186
    invoke-virtual {v0}, Lcom/zhihu/android/bumblebee/http/h;->a()V

    .line 188
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_0
    invoke-virtual {v0, p3}, Lcom/zhihu/android/bumblebee/http/h;->a([Ljava/lang/Object;)V

    .line 193
    monitor-exit p1

    return-object v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static c(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only interface endpoint definitions are supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interface definitions must not extend other interfaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    return-void
.end method

.method private d(Ljava/lang/Class;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lcom/zhihu/android/bumblebee/http/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v1, p0, Lcom/zhihu/android/bumblebee/http/a;->c:Ljava/util/Map;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 165
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 169
    iget-object v2, p0, Lcom/zhihu/android/bumblebee/http/a;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    monitor-exit v1

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a()Lcom/octo/android/robospice/a;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p1}, Lcom/zhihu/android/bumblebee/http/a;->c(Ljava/lang/Class;)V

    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/zhihu/android/bumblebee/http/a$a;

    invoke-direct {p0, p1}, Lcom/zhihu/android/bumblebee/http/a;->d(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/zhihu/android/bumblebee/http/a$a;-><init>(Lcom/zhihu/android/bumblebee/http/a;Ljava/lang/Class;Ljava/util/Map;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    invoke-virtual {v0, p1}, Lcom/octo/android/robospice/a;->a(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public a(Lcom/google/api/client/http/HttpResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpHeaders;->getETag()Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/bumblebee/http/f;

    .line 142
    invoke-interface {v0, p1}, Lcom/zhihu/android/bumblebee/http/f;->a(Lcom/google/api/client/http/HttpResponse;)V

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public a(Lcom/zhihu/android/bumblebee/http/f;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/zhihu/android/bumblebee/http/a;->f:Ljava/lang/String;

    .line 128
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/zhihu/android/bumblebee/http/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->g:Ljava/lang/Class;

    return-object v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/zhihu/android/bumblebee/http/f;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public b(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/zhihu/android/bumblebee/http/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/zhihu/android/bumblebee/http/a;->g:Ljava/lang/Class;

    .line 113
    return-void
.end method

.method public c()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->b:Lcom/octo/android/robospice/a;

    invoke-virtual {v0}, Lcom/octo/android/robospice/a;->e()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/zhihu/android/bumblebee/http/a;->f:Ljava/lang/String;

    return-object v0
.end method
