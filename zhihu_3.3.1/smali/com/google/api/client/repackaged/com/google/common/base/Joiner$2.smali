.class Lcom/google/api/client/repackaged/com/google/common/base/Joiner$2;
.super Lcom/google/api/client/repackaged/com/google/common/base/Joiner;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->skipNulls()Lcom/google/api/client/repackaged/com/google/common/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/repackaged/com/google/common/base/Joiner;


# direct methods
.method constructor <init>(Lcom/google/api/client/repackaged/com/google/common/base/Joiner;Lcom/google/api/client/repackaged/com/google/common/base/Joiner;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$2;->this$0:Lcom/google/api/client/repackaged/com/google/common/base/Joiner;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/Joiner;Lcom/google/api/client/repackaged/com/google/common/base/Joiner$1;)V

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 2
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
    .line 299
    const-string v0, "appendable"

    invoke-static {p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "parts"

    invoke-static {p2, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$2;->this$0:Lcom/google/api/client/repackaged/com/google/common/base/Joiner;

    invoke-virtual {v1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 308
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_1

    .line 311
    iget-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$2;->this$0:Lcom/google/api/client/repackaged/com/google/common/base/Joiner;

    #getter for: Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->separator:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->access$100(Lcom/google/api/client/repackaged/com/google/common/base/Joiner;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 312
    iget-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Joiner$2;->this$0:Lcom/google/api/client/repackaged/com/google/common/base/Joiner;

    invoke-virtual {v1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 315
    :cond_2
    return-object p1
.end method

.method public useForNull(Ljava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/Joiner;
    .locals 2
    .parameter

    .prologue
    .line 321
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified skipNulls"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withKeyValueSeparator(Ljava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/Joiner$MapJoiner;
    .locals 2
    .parameter

    .prologue
    .line 328
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t use .skipNulls() with maps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
