.class Lio/realm/DefaultRealmModuleMediator;
.super Lio/realm/internal/j;
.source "DefaultRealmModuleMediator.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/q;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    const-class v1, Lcom/zhihu/android/app/draft/a/b;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v1, Lcom/zhihu/android/app/draft/a/c;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v1, Lcom/zhihu/android/app/draft/a/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    const-class v1, Lcom/zhihu/android/app/draft/a/d;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DefaultRealmModuleMediator;->a:Ljava/util/Set;

    .line 35
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lio/realm/internal/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lio/realm/internal/d;)Lio/realm/internal/Table;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/q;",
            ">;",
            "Lio/realm/internal/d;",
            ")",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->b(Ljava/lang/Class;)V

    .line 41
    const-class v0, Lcom/zhihu/android/app/draft/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p2}, Lio/realm/d;->a(Lio/realm/internal/d;)Lio/realm/internal/Table;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const-class v0, Lcom/zhihu/android/app/draft/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {p2}, Lio/realm/i;->a(Lio/realm/internal/d;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_1
    const-class v0, Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-static {p2}, Lio/realm/a;->a(Lio/realm/internal/d;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_2
    const-class v0, Lcom/zhihu/android/app/draft/a/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    invoke-static {p2}, Lio/realm/v;->a(Lio/realm/internal/d;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_3
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a(Lio/realm/k;Lio/realm/q;ZLjava/util/Map;)Lio/realm/q;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/q;",
            ">(",
            "Lio/realm/k;",
            "TE;Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/q;",
            "Lio/realm/internal/i;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 131
    instance-of v0, p2, Lio/realm/internal/i;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 133
    :goto_0
    const-class v1, Lcom/zhihu/android/app/draft/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    check-cast p2, Lcom/zhihu/android/app/draft/a/b;

    invoke-static {p1, p2, p3, p4}, Lio/realm/d;->a(Lio/realm/k;Lcom/zhihu/android/app/draft/a/b;ZLjava/util/Map;)Lcom/zhihu/android/app/draft/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/q;

    .line 140
    :goto_1
    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_1
    const-class v1, Lcom/zhihu/android/app/draft/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    check-cast p2, Lcom/zhihu/android/app/draft/a/c;

    invoke-static {p1, p2, p3, p4}, Lio/realm/i;->a(Lio/realm/k;Lcom/zhihu/android/app/draft/a/c;ZLjava/util/Map;)Lcom/zhihu/android/app/draft/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/q;

    goto :goto_1

    .line 137
    :cond_2
    const-class v1, Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    check-cast p2, Lcom/zhihu/android/app/draft/a/a;

    invoke-static {p1, p2, p3, p4}, Lio/realm/a;->a(Lio/realm/k;Lcom/zhihu/android/app/draft/a/a;ZLjava/util/Map;)Lcom/zhihu/android/app/draft/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/q;

    goto :goto_1

    .line 139
    :cond_3
    const-class v1, Lcom/zhihu/android/app/draft/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    check-cast p2, Lcom/zhihu/android/app/draft/a/d;

    invoke-static {p1, p2, p3, p4}, Lio/realm/v;->a(Lio/realm/k;Lcom/zhihu/android/app/draft/a/d;ZLjava/util/Map;)Lcom/zhihu/android/app/draft/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/q;

    goto :goto_1

    .line 142
    :cond_4
    invoke-static {v0}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/Class;Lio/realm/internal/b;)Lio/realm/q;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/q;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lio/realm/internal/b;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->b(Ljava/lang/Class;)V

    .line 109
    const-class v0, Lcom/zhihu/android/app/draft/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lio/realm/d;

    invoke-direct {v0, p2}, Lio/realm/d;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/q;

    .line 116
    :goto_0
    return-object v0

    .line 111
    :cond_0
    const-class v0, Lcom/zhihu/android/app/draft/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Lio/realm/i;

    invoke-direct {v0, p2}, Lio/realm/i;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/q;

    goto :goto_0

    .line 113
    :cond_1
    const-class v0, Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    new-instance v0, Lio/realm/a;

    invoke-direct {v0, p2}, Lio/realm/a;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/q;

    goto :goto_0

    .line 115
    :cond_2
    const-class v0, Lcom/zhihu/android/app/draft/a/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    new-instance v0, Lio/realm/v;

    invoke-direct {v0, p2}, Lio/realm/v;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/q;

    goto :goto_0

    .line 118
    :cond_3
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/q;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->b(Ljava/lang/Class;)V

    .line 92
    const-class v0, Lcom/zhihu/android/app/draft/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lio/realm/d;->f()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 94
    :cond_0
    const-class v0, Lcom/zhihu/android/app/draft/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-static {}, Lio/realm/i;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    const-class v0, Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-static {}, Lio/realm/a;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_2
    const-class v0, Lcom/zhihu/android/app/draft/a/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    invoke-static {}, Lio/realm/v;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_3
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/q;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lio/realm/DefaultRealmModuleMediator;->a:Ljava/util/Set;

    return-object v0
.end method

.method public b(Ljava/lang/Class;Lio/realm/internal/d;)Lio/realm/internal/b;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/q;",
            ">;",
            "Lio/realm/internal/d;",
            ")",
            "Lio/realm/internal/b;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->b(Ljava/lang/Class;)V

    .line 58
    const-class v0, Lcom/zhihu/android/app/draft/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p2}, Lio/realm/d;->b(Lio/realm/internal/d;)Lio/realm/d$a;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 60
    :cond_0
    const-class v0, Lcom/zhihu/android/app/draft/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {p2}, Lio/realm/i;->b(Lio/realm/internal/d;)Lio/realm/i$a;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    const-class v0, Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-static {p2}, Lio/realm/a;->b(Lio/realm/internal/d;)Lio/realm/a$a;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_2
    const-class v0, Lcom/zhihu/android/app/draft/a/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    invoke-static {p2}, Lio/realm/v;->b(Lio/realm/internal/d;)Lio/realm/v$a;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_3
    invoke-static {p1}, Lio/realm/DefaultRealmModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
