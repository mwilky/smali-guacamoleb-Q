.class Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;
.super Ljava/lang/Object;
.source "ListRowPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->onBind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

.field final synthetic val$viewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->this$1:Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    iput-object p2, p0, Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->val$viewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->this$1:Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    iget-object v0, v0, Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroidx/leanback/widget/HorizontalGridView;

    iget-object v1, p0, Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->val$viewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v1, v1, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/HorizontalGridView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v1, p0, Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->this$1:Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    iget-object v1, v1, Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v1}, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->this$1:Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    iget-object v1, v1, Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v1}, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v1

    iget-object v2, p0, Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->val$viewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v2, v2, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object v3, v0, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->this$1:Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    iget-object v4, v4, Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v5, p0, Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter$1;->this$1:Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;

    iget-object v5, v5, Landroidx/leanback/widget/ListRowPresenter$ListRowPresenterItemBridgeAdapter;->mRowViewHolder:Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    iget-object v5, v5, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->mRow:Landroidx/leanback/widget/Row;

    check-cast v5, Landroidx/leanback/widget/ListRow;

    invoke-interface {v1, v2, v3, v4, v5}, Landroidx/leanback/widget/BaseOnItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
