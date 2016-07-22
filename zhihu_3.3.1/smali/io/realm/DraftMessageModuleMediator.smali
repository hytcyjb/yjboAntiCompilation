.class Lio/realm/DraftMessageModuleMediator;
.super Lio/realm/internal/j;
.source "DraftMessageModuleMediator.java"


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
    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 27
    const-class v1, Lcom/zhihu/android/app/draft/a/c;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DraftMessageModuleMediator;->a:Ljava/util/Set;

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
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
    .line 33
    invoke-static {p1}, Lio/realm/DraftMessageModuleMediator;->b(Ljava/lang/Class;)V

    .line 35
    const-class v0, Lcom/zhihu/android/app/draft/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p2}, Lio/realm/i;->a(Lio/realm/internal/d;)Lio/realm/internal/Table;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    invoke-static {p1}, Lio/realm/DraftMessageModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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
    .line 95
    instance-of v0, p2, Lio/realm/internal/i;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 97
    :goto_0
    const-class v1, Lcom/zhihu/android/app/draft/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    check-cast p2, Lcom/zhihu/android/app/draft/a/c;

    invoke-static {p1, p2, p3, p4}, Lio/realm/i;->a(Lio/realm/k;Lcom/zhihu/android/app/draft/a/c;ZLjava/util/Map;)Lcom/zhihu/android/app/draft/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/q;

    return-object v0

    .line 95
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {v0}, Lio/realm/DraftMessageModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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
    .line 77
    invoke-static {p1}, Lio/realm/DraftMessageModuleMediator;->b(Ljava/lang/Class;)V

    .line 79
    const-class v0, Lcom/zhihu/android/app/draft/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Lio/realm/i;

    invoke-direct {v0, p2}, Lio/realm/i;-><init>(Lio/realm/internal/b;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/q;

    return-object v0

    .line 82
    :cond_0
    invoke-static {p1}, Lio/realm/DraftMessageModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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
    .line 66
    invoke-static {p1}, Lio/realm/DraftMessageModuleMediator;->b(Ljava/lang/Class;)V

    .line 68
    const-class v0, Lcom/zhihu/android/app/draft/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lio/realm/i;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    invoke-static {p1}, Lio/realm/DraftMessageModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

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
    .line 88
    sget-object v0, Lio/realm/DraftMessageModuleMediator;->a:Ljava/util/Set;

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
    .line 44
    invoke-static {p1}, Lio/realm/DraftMessageModuleMediator;->b(Ljava/lang/Class;)V

    .line 46
    const-class v0, Lcom/zhihu/android/app/draft/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p2}, Lio/realm/i;->b(Lio/realm/internal/d;)Lio/realm/i$a;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    invoke-static {p1}, Lio/realm/DraftMessageModuleMediator;->c(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object v0

    throw v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
