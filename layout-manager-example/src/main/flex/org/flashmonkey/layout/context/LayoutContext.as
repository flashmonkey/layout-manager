package org.flashmonkey.layout.context
{
	import flash.display.DisplayObjectContainer;
	
	import org.flashmonkey.layout.view.LayoutContainer;
	import org.flashmonkey.layout.view.LayoutPanelMediator;
	import org.robotlegs.mvcs.Context;
	
	public class LayoutContext extends Context
	{
		public function LayoutContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}
		
		public override function startup():void
		{
			mediatorMap.mapView(LayoutContainer, LayoutPanelMediator);
		}
	}
}