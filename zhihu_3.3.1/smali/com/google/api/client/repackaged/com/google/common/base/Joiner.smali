.class public Lcom/google/api/client/repackaged/com/google/common/base/Joiner;
.super Ljava/lang/Object;
.source "Joiner.java"


# annotations
.annotation build Lcom/google/api/client/repackaged/com/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/repackaged/com/google/common/base/Joiner$MapJoiner;
    }
.end annotation


# instance fields
.field private final separator:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/api/client/repackaged/com/google/common/base/Joiner;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iget-object v0, p1, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->separator:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->separator:Ljava/lang/String;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/client/repackaged/com/google/common/base/Joiner;Lcom/google/api/client/repackaged/com/google/common/base/Joiner$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/Joiner;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->separator:Ljava/lang/String;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/google/api/client/repackaged/com/google/common/base/Joiner;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->separator:Ljava/lang/String;

    return-object v0
.end method

.method private static iterable(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    invoke-static {p2}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$3;-><init>([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static on(C)Lcom/google/api/client/repackaged/com/google/common/base/Joiner;
    .locals 2
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/Joiner;
    .locals 1
    .parameter

    .prologue
    .line 71
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;

    invoke-direct {v0, p0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/lang/Iterable;)Ljava/lang/Appendable;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/lang/Iterable",
            "<*>;)TA;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public final appendTo(Ljava/lang/Appendable;Ljava/lang/Object;)Ljava/lang/Appendable;
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/google/api/client/repackaged/com/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            "I:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Iterable",
            "<*>;:",
            "Ljava/util/Iterator",
            "<*>;>(TA;TI;)TA;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    check-cast p2, Ljava/util/Iterator;

    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public final varargs appendTo(Ljava/lang/Appendable;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Appendable;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {p2, p3, p4}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->iterable(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->appendTo(Ljava/lang/Appendable;Ljava/lang/Iterable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Iterator",
            "<*>;)TA;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 125
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->separator:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 127
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 130
    :cond_0
    return-object p1
.end method

.method public final appendTo(Ljava/lang/Appendable;[Ljava/lang/Object;)Ljava/lang/Appendable;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;[",
            "Ljava/lang/Object;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->appendTo(Ljava/lang/Appendable;Ljava/lang/Iterable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public final appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final appendTo(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/google/api/client/repackaged/com/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Iterable",
            "<*>;:",
            "Ljava/util/Iterator",
            "<*>;>(",
            "Ljava/lang/StringBuilder;",
            "TI;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    check-cast p2, Ljava/util/Iterator;

    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final varargs appendTo(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-static {p2, p3, p4}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->iterable(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 184
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    return-object p1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final appendTo(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final join(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 230
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->join(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final join(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation build Lcom/google/api/client/repackaged/com/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Iterable",
            "<*>;:",
            "Ljava/util/Iterator",
            "<*>;>(TI;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 222
    check-cast p1, Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->join(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-static {p1, p2, p3}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->iterable(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final join(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 248
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipNulls()Lcom/google/api/client/repackaged/com/google/common/base/Joiner;
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$2;

    invoke-direct {v0, p0, p0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$2;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/Joiner;Lcom/google/api/client/repackaged/com/google/common/base/Joiner;)V

    return-object v0
.end method

.method toString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 550
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public useForNull(Ljava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/Joiner;
    .locals 1
    .parameter

    .prologue
    .line 265
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$1;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/Joiner;Lcom/google/api/client/repackaged/com/google/common/base/Joiner;Ljava/lang/String;)V

    return-object v0
.end method

.method public withKeyValueSeparator(Ljava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/Joiner$MapJoiner;
    .locals 2
    .parameter

    .prologue
    .line 340
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$MapJoiner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$MapJoiner;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/Joiner;Ljava/lang/String;Lcom/google/api/client/repackaged/com/google/common/base/Joiner$1;)V

    return-object v0
.end method
