.class Lio/realm/DraftAskQuestionModuleMediator;
.super Lio/realm/internal/j;
.source "DraftAskQuestionModuleMediator.java"


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
    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    const-class v1, Lcom/zhihu/android/app/draft/a/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    const-class v1, Lcom/zhihu/android/app/draft/a/d;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DraftAskQuestionModuleMediator;->a:Ljava/util/Set;

    .line 31
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
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
    .line 35
    invoke-static {p1}, Lio/realm/DraftAskQuestionModuleMediator;->b(Ljava/lang/Class;)V

    .line 37
    const-class v0, Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p2}, Lio/realm/a;->a(Lio/realm/internal/d;)Lio/realm/internal/Table;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-class v0, Lcom/zhihu/android/app/draft/a/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-static {p2}, Lio/realm/v;->a(Lio/realm/internal/d;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p1}, Lio/realm/DraftAskQuestionModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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
    .line 107
    instance-of v0, p2, Lio/realm/internal/i;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 109
    :goto_0
    const-class v1, Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    check-cast p2, Lcom/zhihu/android/app/draft/a/a;

    invoke-static {p1, p2, p3, p4}, Lio/realm/a;->a(Lio/realm/k;Lcom/zhihu/android/app/draft/a/a;ZLjava/util/Map;)Lcom/zhihu/android/app/draft/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/q;

    .line 112
    :goto_1
    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    const-class v1, Lcom/zhihu/android/app/draft/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    check-cast p2, Lcom/zhihu/android/app/draft/a/d;

    invoke-static {p1, p2, p3, p4}, Lio/realm/v;->a(Lio/realm/k;Lcom/zhihu/android/app/draft/a/d;ZLjava/util/Map;)Lcom/zhihu/android/app/draft/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/q;

    goto :goto_1

    .line 114
    :cond_2
    invoke-static {v0}, Lio/realm/DraftAskQuestionModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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
    .line 87
    invoke-static {p1}, Lio/realm/DraftAskQuestionModuleMediator;->b(Ljava/lang/Class;)V

    .line 89
    const-class v0, Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lio/realm/a;

    invoke-direct {v0, p2}, Lio/realm/a;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/q;

    .line 92
    :goto_0
    return-object v0

    .line 91
    :cond_0
    const-class v0, Lcom/zhihu/android/app/draft/a/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Lio/realm/v;

    invoke-direct {v0, p2}, Lio/realm/v;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/q;

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p1}, Lio/realm/DraftAskQuestionModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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
    .line 74
    invoke-static {p1}, Lio/realm/DraftAskQuestionModuleMediator;->b(Ljava/lang/Class;)V

    .line 76
    const-class v0, Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lio/realm/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 78
    :cond_0
    const-class v0, Lcom/zhihu/android/app/draft/a/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lio/realm/v;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {p1}, Lio/realm/DraftAskQuestionModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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
    .line 100
    sget-object v0, Lio/realm/DraftAskQuestionModuleMediator;->a:Ljava/util/Set;

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
    .line 48
    invoke-static {p1}, Lio/realm/DraftAskQuestionModuleMediator;->b(Ljava/lang/Class;)V

    .line 50
    const-class v0, Lcom/zhihu/android/app/draft/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p2}, Lio/realm/a;->b(Lio/realm/internal/d;)Lio/realm/a$a;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const-class v0, Lcom/zhihu/android/app/draft/a/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-static {p2}, Lio/realm/v;->b(Lio/realm/internal/d;)Lio/realm/v$a;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {p1}, Lio/realm/DraftAskQuestionModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
